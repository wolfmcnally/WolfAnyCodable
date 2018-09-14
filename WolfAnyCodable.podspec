Pod::Spec.new do |s|
    s.name             = 'WolfAnyCodable'
    s.version          = '1.0'
    s.summary          = 'Swift type-erased wrappers for Encodable, Decodable, and Codable values.'

    s.description      = <<-DESC
    Swift type-erased wrappers for Encodable, Decodable, and Codable values.
    Cocoapod based on https://github.com/Flight-School/AnyCodable
    DESC

    s.homepage         = 'https://github.com/wolfmcnally/WolfAnyCodable'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Wolf McNally' => 'wolf@wolfmcnally.com' }
    s.source           = { :git => 'https://github.com/wolfmcnally/WolfAnyCodable.git', :tag => s.version.to_s }

    s.source_files = 'WolfAnyCodable/Classes/**/*'

    s.swift_version = '4.2'

    s.ios.deployment_target = '10.0'
    s.macos.deployment_target = '10.13'
    s.tvos.deployment_target = '11.0'

    s.module_name = 'WolfAnyCodable'
end
