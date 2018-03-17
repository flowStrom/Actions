# Uncomment the next line to define a global platform for your project
platform :ios, '11.2'

target 'Actions' do

  use_frameworks!

  # Pods for Actions

pod 'RealmSwift'

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['CLANG_WARN_OBJC_IMPLICIT_RETAIN_SELF'] = false
        end
    end
end

end
