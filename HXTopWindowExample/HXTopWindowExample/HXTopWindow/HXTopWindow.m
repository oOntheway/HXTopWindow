//
//  HXTopWindow.m
//  百思不得姐
//
//  Created by HuaXin on 16/7/21.
//  Copyright © 2016年 HuaXin. All rights reserved.
//

#import "HXTopWindow.h"

@implementation HXTopWindow

static UIWindow *window_;

+ (void)initialize
{
    window_ = [[UIWindow alloc] init];
    window_.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20);
    window_.windowLevel = UIWindowLevelAlert;
    window_.backgroundColor = [UIColor yellowColor];
    
    [window_ addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(windowClick)]];
}

+ (void)show
{
    window_.hidden = NO;
}

+ (void)windowClick
{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    [self searchScrollViewInView:window];
}

+ (void)searchScrollViewInView:(UIView *)superView
{
    // 遍历父视图中的scrollView
    for (UIScrollView *subView in superView.subviews) {
        
        // 判断是否在keywindow中
        UIWindow *keywindow = [UIApplication sharedApplication].keyWindow;
        
        CGRect newFrame = [keywindow convertRect:subView.frame fromView:subView.superview];
        CGRect windowBounds = keywindow.bounds;
        BOOL isIntersects = CGRectIntersectsRect(newFrame, windowBounds);
        
        // 如果是scrollView, 让scrollView滚动到顶部
        if ([subView isKindOfClass:[UIScrollView class]] && isIntersects) {
            // 取出scrollView的偏移量
            CGPoint offSet = subView.contentOffset;
            // 让偏移量的Y改为该scrollView的顶部内边距
            offSet.y = -subView.contentInset.top;
            // 让scrollView滚动到修改后的偏移量
            [subView setContentOffset:offSet animated:YES];
        }
        // 遍历子视图中的scrollView, 重复同样的操作
        [self searchScrollViewInView:subView];
    }
}
@end
