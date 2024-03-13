//
// TableResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
    import AnyCodable
#endif

public struct TableResponse: Codable, Hashable {
    public enum Code: String, Codable, CaseIterable {
        case ok = "Ok"
        case invalidUrl = "InvalidUrl"
        case invalidService = "InvalidService"
        case invalidVersion = "InvalidVersion"
        case invalidOptions = "InvalidOptions"
        case invalidQuery = "InvalidQuery"
        case invalidValue = "InvalidValue"
        case noSegment = "NoSegment"
        case tooBig = "TooBig"
        case noRoute = "NoRoute"
        case noTable = "NoTable"
        case notImplemented = "NotImplemented"
        case noTrips = "NoTrips"
    }

    public var code: Code
    public var message: String?
    public var dataVersion: Date?
    /** array of arrays that stores the matrix in row-major order. durations[i][j] gives the travel time from the i-th waypoint to the j-th waypoint. Values are given in seconds. */
    public var durations: [[Double]]?
    public var distances: [[Double]]?
    public var sources: [Waypoint]?
    public var destinations: [Waypoint]?
    public var fallbackSpeedCells: [[Int]]?

    public init(code: Code, message: String? = nil, dataVersion: Date? = nil, durations: [[Double]]? = nil, distances: [[Double]]? = nil, sources: [Waypoint]? = nil, destinations: [Waypoint]? = nil, fallbackSpeedCells: [[Int]]? = nil) {
        self.code = code
        self.message = message
        self.dataVersion = dataVersion
        self.durations = durations
        self.distances = distances
        self.sources = sources
        self.destinations = destinations
        self.fallbackSpeedCells = fallbackSpeedCells
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case message
        case dataVersion = "data_version"
        case durations
        case distances
        case sources
        case destinations
        case fallbackSpeedCells = "fallback_speed_cells"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(code, forKey: .code)
        try container.encodeIfPresent(message, forKey: .message)
        try container.encodeIfPresent(dataVersion, forKey: .dataVersion)
        try container.encodeIfPresent(durations, forKey: .durations)
        try container.encodeIfPresent(distances, forKey: .distances)
        try container.encodeIfPresent(sources, forKey: .sources)
        try container.encodeIfPresent(destinations, forKey: .destinations)
        try container.encodeIfPresent(fallbackSpeedCells, forKey: .fallbackSpeedCells)
    }
}