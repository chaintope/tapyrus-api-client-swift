//
// GetTokensResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetTokensResponse: Codable, Hashable {

    public var tokenId: String?
    public var amount: Int?

    public init(tokenId: String? = nil, amount: Int? = nil) {
        self.tokenId = tokenId
        self.amount = amount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case tokenId = "token_id"
        case amount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(tokenId, forKey: .tokenId)
        try container.encodeIfPresent(amount, forKey: .amount)
    }
}

