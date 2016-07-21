//
//  HXExapleViewController.m
//  HXTopWindowExample
//
//  Created by HuaXin on 16/7/21.
//  Copyright © 2016年 HX. All rights reserved.
//

#import "HXExapleViewController.h"
#import "HXTopWindow.h"

@interface HXExapleViewController ()

@end

@implementation HXExapleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建自定义顶部statusBar
    [HXTopWindow show];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%zd --- %zd", indexPath.section, indexPath.row];
    
    return cell;
}

@end
