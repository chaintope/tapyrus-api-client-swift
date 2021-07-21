//
// GetAddressesResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetAddressesResponse: Codable, Hashable {

    public var count: Int?
    public var addresses: [String]?

    public init(count: Int? = nil, addresses: [String]? = nil) {
        self.count = count
        self.addresses = addresses
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case count
        case addresses
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(count, forKey: .count)
        try container.encodeIfPresent(addresses, forKey: .addresses)
    }
}

