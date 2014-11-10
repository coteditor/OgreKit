Pod::Spec.new do |s|
  s.name         = "OgreKit"
  s.version      = "2.1.7.3"
  s.summary      = "Forked OgreKit framework for CotEditor."

  s.homepage     = "https://github.com/coteditor/OgreKit"
  s.license      = { :type => "BSD",
                     :file => "RegularExpression/Documentation/License.txt" }
  s.authors      = { "Isao Sonobe" => 'sonoisa (AT) gmail (DOT) com',
                     "CotEditor Project" => 'coteditor.github@gmail.com' }

  s.platform     = :osx, '10.6'
  s.source       = { :git => "https://github.com/coteditor/OgreKit.git",
                     :branch => "cocoaPods",
                     :tag => s.version.to_s }

  s.prepare_command = <<-CMD
                      xcodebuild -target All
                      mv build/Default/OgreKit.framework .
                      CMD
  s.vendored_frameworks = 'OgreKit.framework'
  s.resources       = 'OgreKit.framework'
  s.requires_arc    = false
end
