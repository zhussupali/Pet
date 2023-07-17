platform :ios, '13.0'
use_frameworks!
workspace 'Pet'

def application_pods
  pod 'Swinject', '2.7.1'
  
  core_pods
  providers_pods
end

def core_pods
    pod 'KeychainAccess', '4.1.0'
end

def providers_pods
    pod 'Alamofire', '5.4.4'
end

target 'Core' do
  project 'Layers/Core/Core.project'
  core_pods
end

target 'Providers' do
  project 'Layers/Providers/Providers.project'
  providers_pods
end

target 'Pet' do
  project 'App/Pet.project'
  application_pods
end

post_install do |installer|
  installer.generated_projects.each do |project|
    project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
      end
    end
  end
end
