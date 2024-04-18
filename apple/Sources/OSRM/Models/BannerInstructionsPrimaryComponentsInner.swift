//
// BannerInstructionsPrimaryComponentsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct BannerInstructionsPrimaryComponentsInner: Codable, Hashable {
    public var text: String?
    public var type: String?

    public init(text: String? = nil, type: String? = nil) {
        self.text = text
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case text
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(type, forKey: .type)
    }
}