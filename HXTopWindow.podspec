Pod::Spec.new do |s|

  s.name         = "HXTopWindow"
  s.version      = "0.0.1"
  s.summary      = "a very small top window, scrollView will scroll to top when the window is clicked"
  s.description  = <<-DESC
                    a very small top window, scrollView will scroll to top when the window is clicked
                    DESC

  s.homepage     = "https://github.com/oOntheway/HXTopWindow"
  s.license      = "MIT"
  s.author             = { "oOntheway" => "dl_xq@sina.com" }
  s.platform     = :ios
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/oOntheway/HXTopWindow.git", :tag => "s.version" }
  s.source_files  = "HXTopWindowExample/HXTopWindowExample/HXTopWindow"
  s.requires_arc = true

end
