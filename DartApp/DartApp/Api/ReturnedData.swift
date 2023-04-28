// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct ReturnedData : Codable {
    let xml: XML
    let root: Root
}

// MARK: - Root
struct Root : Codable {
    let id: String
    let uri: URI
    let date, time: String
    let station: [Station]
    let message: String
}

// MARK: - Station
struct Station : Codable {
    let name, abbr: String
    let etd: [Etd]
}

// MARK: - Etd
struct Etd : Codable {
    let destination: Destination
    let abbreviation: Abbreviation
    let limited: String
    let estimate: [Estimate]
}

enum Abbreviation : Codable {
    case antc
    case bery
    case daly
    case dubl
    case mlbr
    case rich
    case sfia
}

enum Destination : Codable {
    case antioch
    case berryessa
    case dalyCity
    case dublinPleasanton
    case millbrae
    case millbraeSFO
    case richmond
    case sfAirport
    case sfoMillbrae
}

// MARK: - Estimate
struct Estimate : Codable {
    let minutes, platform: String
    let direction: Direction
    let length: String
    let color: Col
    let hexcolor: Hexcolor
    let bikeflag, delay, cancelflag, dynamicflag: String
}

enum Col : Codable {
    case blue
    case green
    case orange
    case red
    case white
    case yellow
}

enum Direction : Codable {
    case north
    case south
}

enum Hexcolor : Codable {
    case ff0000
    case ff9933
    case ffff33
    case ffffff
    case the0099Cc
    case the339933
}

// MARK: - URI
struct URI : Codable {
    let cdataSection: String
}

// MARK: - XML
struct XML : Codable {
    let version, encoding: String
}
