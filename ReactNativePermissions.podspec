require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                   = 'ReactNativePermissions'
  s.version                = package['version']
  s.summary                = package['description']
  s.description            = package['description']
  s.homepage               = package['homepage']
  s.license                = package['license']
  s.author                 = package['author']
  s.source                 = { :git => 'https://github.com/BachirKhiati/react-native-permissions.git', :tag => s.version }

  s.platform               = :ios, '9.0'
  s.ios.deployment_target  = '9.0'

  s.subspec "ReactNativePermissions" do |ss|
    ss.source_files  = "ios/**/*.{h,m,swift}"
    s.static_framework = true
  end

  s.dependency "React"

  s.default_subspec = "ReactNativePermissions"
end
