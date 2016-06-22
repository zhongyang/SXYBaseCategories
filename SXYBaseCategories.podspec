Pod::Spec.new do |s|
  s.name         = "SXYBaseCategories"
  s.version      = "1.0.1"
  s.ios.deployment_target = '7.0'
 # s.osx.deployment_target = '10.8'
  s.summary      = "Categories for development iOS APP"
  s.homepage     = "https://github.com/zhongyang/SXYBaseCategories"
  s.license      = "MIT"
  s.author             = { "zhongyang" => "ppnext@163.com" }
  s.social_media_url   = "http://weibo.com/exceptions"
  s.source       = { :git => "https://github.com/zhongyang/SXYBaseCategories.git", :tag => s.version }
  s.source_files  = "*.*"
  s.requires_arc = true
  s.dependency 'MBProgressHUD', '~> 0.9.2'
end
