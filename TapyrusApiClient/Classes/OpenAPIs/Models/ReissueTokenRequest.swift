//
// ReissueTokenRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ReissueTokenRequest: Codable, Hashable {

    public var amount: Int

    public init(amount: Int) {
        self.amount = amount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(amount, forKey: .amount)
    }
}

