//
// NearestWaypoint.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct NearestWaypoint: Codable, Hashable {
    public var name: String?
    public var location: [Double]?
    public var distance: Double?
    public var hint: String?
    public var nodes: [Int]?

    public init(name: String? = nil, location: [Double]? = nil, distance: Double? = nil, hint: String? = nil, nodes: [Int]? = nil) {
        self.name = name
        self.location = location
        self.distance = distance
        self.hint = hint
        self.nodes = nodes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case location
        case distance
        case hint
        case nodes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(location, forKey: .location)
        try container.encodeIfPresent(distance, forKey: .distance)
        try container.encodeIfPresent(hint, forKey: .hint)
        try container.encodeIfPresent(nodes, forKey: .nodes)
    }
}