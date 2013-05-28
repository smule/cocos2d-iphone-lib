Pod::Spec.new do |s|
  s.name         = "cocos2d-iphone-lib"
  s.version      = "1.0.0"
  s.summary      = "This is the compiled version of cocos2d."
  s.description  = "This is the compiled version of cocos2d. Use when you don't want to pull in all the source. Built from revision d867979c11ef4e1cc464fc0c7f205a86b6a0df30 at git@github.com:smule/cocos2d-iphone.git"
  s.homepage     = "http://github.com/smule/cocos2d-iphone-lib"

  s.license      = {
    :type => 'internal',
    :text => "Copyright (C) 2013, Smule, Inc."
  }

  s.author       = { "Smule IOS Team" => "team-ios@smule.com" }
  s.source         = { :git => "git@github.com:smule/cocos2d-iphone-lib.git", :tag => "smule-cocos2d-iphone-lib-1.0.0" }


  s.source_files = '**/*.{h,m}'
  s.resources = '**/*.png'
  s.preserve_paths = "**/*.a"

  s.platform     = :ios, '5.0'
  s.ios.deployment_target = '5.0'
  s.header_mappings_dir = 'Headers'
  s.libraries = 'cocos2d'

  localPodSearchPath = File.join(File.dirname(__FILE__), "**")

  s.xcconfig = { 
    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/**" "' + localPodSearchPath + '"',
  }

end
