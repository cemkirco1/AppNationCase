//
//  SpaceXAPIResponse.swift
//  AppNationCase
//
//  Created by cem on 30.01.2022.
//

import Foundation

// MARK: - Welcome
struct SpaceXAPIResponse: Codable{
    var fairings: Fairings?
    var links: Links?
    var staticFireDateUTC, staticFireDateUnix: String?
    var net: Bool?
    var window: String?
    var rocket: String?
    var success: Bool?
    var failures: [String?]?
    var details: String?
    var crew: [String?]?
    var ships: [String]?
    var capsules: [String?]?
    var payloads: [String]?
    var launchpad: String?
    var flightNumber: Int?
    var name : String?
    var dateUTC: String?
    var dateUnix: Int?
    var dateLocal: Date?
    var datePrecision: String?
    var upcoming: Bool?
    var cores: [Core]?
    var autoUpdate, tbd: Bool?
    var launchLibraryID, id: String?
    
    
}

// MARK: - Core
struct Core: Codable {
    var core: String?
    var flight: Int?
    var gridfins, legs, reused, landingAttempt: Bool?
    var landingSuccess: Bool?
    var landingType, landpad: String?
    
    
}

// MARK: - Fairings
struct Fairings: Codable {
    var reused: String?
    var recoveryAttempt: Bool?
    var recovered: String?
    var ships: [String]?
    

}

// MARK: - Links
struct Links: Codable {
    var patch: Patch?
    var reddit: Reddit?
    var flickr: Flickr?
    var presskit: String?
    var webcast: String?
    var youtubeID: String?
    var article: String?
    var wikipedia: String?
    
    

}

// MARK: - Flickr
struct Flickr: Codable {
    var small, original: [String?]?
    
    

}

// MARK: - Patch
struct Patch: Codable {
    var small, large: String?
    
   

}

// MARK: - Reddit
struct Reddit: Codable {
    var campaign: String?
    var launch, media: String?
    var recovery: String?
    
    

}
