Pod::Spec.new do |s|
 
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.name = "StateButton"
  s.summary = "Button with different states"
  s.requires_arc = true
 

  s.version = "0.1.0"
 

  s.license = { :type => "MIT", :file => "LICENSE" }
 
  
  s.author = { "zyfu000" => "fuzhiyang0123@gmail.com" }
 
 
  s.homepage = "https://github.com/zyfu0000/StateButton"
 
 
  s.source = { :git => "https://github.com/zyfu0000/StateButton.git", :tag => "#{s.version}"}
 

  s.framework = "UIKit"
 

  s.source_files = "StateButton/*.{swift}"
 
end