Pod::Spec.new do |s|
  s.name         = "OgreKit"
  s.version      = "2.1.7.14"
  s.summary      = "Forked OgreKit framework for CotEditor."

  s.homepage     = "https://github.com/coteditor/OgreKit"
  s.license      = { :type => "BSD",
                     :file => "RegularExpression/Documentation/License.txt" }
  s.authors      = { "Isao Sonobe" => 'sonoisa (AT) gmail (DOT) com',
                     "CotEditor Project" => 'coteditor.github@gmail.com' }

  s.platform     = :osx, '10.6'
  s.source       = { :git => "https://github.com/coteditor/OgreKit.git",
                     :branch => "coteditor-new",
                     :tag => s.version }

  s.prepare_command = <<-CMD
                      xcodebuild -target "OgreKit (without Find Panel)"
                      mv build/Default/OgreKit.framework .
                      CMD
  s.vendored_frameworks = 'OgreKit.framework'
  s.resources       = 'OgreKit.framework'
  s.requires_arc    = false
end
