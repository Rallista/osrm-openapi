//
// BannerInstructions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct BannerInstructions: Codable, Hashable {
    public var distanceAlongGeometry: Double?
    public var primary: BannerInstructionsPrimary?
    public var secondary: BannerInstructionsPrimary?

    public init(distanceAlongGeometry: Double? = nil, primary: BannerInstructionsPrimary? = nil, secondary: BannerInstructionsPrimary? = nil) {
        self.distanceAlongGeometry = distanceAlongGeometry
        self.primary = primary
        self.secondary = secondary
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case distanceAlongGeometry
        case primary
        case secondary
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(distanceAlongGeometry, forKey: .distanceAlongGeometry)
        try container.encodeIfPresent(primary, forKey: .primary)
        try container.encodeIfPresent(secondary, forKey: .secondary)
    }
}