Pod::Spec.new do |s|
  s.name             = 'Modularity1'
  s.version          = '0.0.2'
  s.summary          = 'Kp modularity test'
 
  s.description      = <<-DESC
Modularity check for modules. It is module 1.
                       DESC
 
  s.homepage         = 'https://github.com/kittu4ios/Modularity1'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Krishnaprakash' => 'Prakash.7575@gmail.com' }
  s.source           = { :git => 'https://github.com/kittu4ios/Modularity1.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '10.0'
  s.source_files = 'Modularity1/Modularity1/*.{h,m,swift,xcodeproj,xcassets,storyboard}'
 
end


