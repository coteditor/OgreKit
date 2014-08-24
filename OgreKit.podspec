Pod::Spec.new do |s|
  s.name         = "OgreKit"
  s.version      = "2.1.7.1"
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
                      cd RegularExpression/oniguruma/
                      make
                      CMD
  s.source_files    = "RegularExpression/*.{h,m}", "RegularExpression/oniguruma/**/*.{h,m}", "FindPanel/**/*.{h,m}"
  s.resources       = "FindPanel/Resources/*", "RegularExpression/oniguruma/universal/*"
  s.libraries       = 'onig'
  s.private_header_files = "RegularExpression/oniguruma/*"
  s.xcconfig        = { 'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/OgreKit"',
                        'HEADER_SEARCH_PATHS' => '$(SRCROOT)/RegularExpression/oniguruma/universal',
                        'OTHER_LINKER_FLAGS' => '-seg1addr 0x32000000',
                        'OTHER_WARNING_FLAGS' => '-Wmost -Wno-four-char-constants -Wno-unknown-pragmas' }
  s.requires_arc    = false
end
