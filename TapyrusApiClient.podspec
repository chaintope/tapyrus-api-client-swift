Pod::Spec.new do |s|
  s.name = 'TapyrusApiClient'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '0.0.1'
  s.source = { :git => 'https://github.com/chaintope/tapyrus-api-client-swift.git' }
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'TapyrusApiClient Swift SDK'
  s.source_files = 'TapyrusApiClient/Classes/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.0'
end
