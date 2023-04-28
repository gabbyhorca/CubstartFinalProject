
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct ReturnedData: Codable {
    let xml: XML
    let root: Root

    enum CodingKeys: String, CodingKey {
        case xml = "?xml"
        case root
    }
}

// MARK: - Root
struct Root: Codable {
    let id: String
    let uri: URI
    let date, time: String
    let station: [Station]
    let message: String

    enum CodingKeys: String, CodingKey {
        case id = "@id"
        case uri, date, time, station, message
    }
}

// MARK: - Station
struct Station: Codable {
    let name, abbr: String
    let etd: [Etd]
}

// MARK: - Etd
struct Etd: Codable {
    let destination: Destination
    let abbreviation: Abbreviation
    let limited: String
    let estimate: [Estimate]
}

enum Abbreviation: String, Codable {
    case antc = "ANTC"
    case bery = "BERY"
    case daly = "DALY"
    case dubl = "DUBL"
    case mlbr = "MLBR"
    case rich = "RICH"
    case sfia = "SFIA"
}

enum Destination: String, Codable {
    case antioch = "Antioch"
    case berryessa = "Berryessa"
    case dalyCity = "Daly City"
    case dublinPleasanton = "Dublin/Pleasanton"
    case millbrae = "Millbrae"
    case millbraeSFO = "Millbrae/SFO"
    case richmond = "Richmond"
    case sfAirport = "SF Airport"
    case sfoMillbrae = "SFO/Millbrae"
}

// MARK: - Estimate
struct Estimate: Codable {
    let minutes, platform: String
    let direction: Direction
    let length: String
    let color: Col
    let hexcolor: Hexcolor
    let bikeflag, delay, cancelflag, dynamicflag: String
}

enum Col: String, Codable {
    case blue = "BLUE"
    case green = "GREEN"
    case orange = "ORANGE"
    case red = "RED"
    case white = "WHITE"
    case yellow = "YELLOW"
}

enum Direction: String, Codable {
    case north = "North"
    case south = "South"
}

enum Hexcolor: String, Codable {
    case ff0000 = "#ff0000"
    case ff9933 = "#ff9933"
    case ffff33 = "#ffff33"
    case ffffff = "#ffffff"
    case the0099Cc = "#0099cc"
    case the339933 = "#339933"
}

// MARK: - URI
struct URI: Codable {
    let cdataSection: String

    enum CodingKeys: String, CodingKey {
        case cdataSection = "#cdata-section"
    }
}

// MARK: - XML
struct XML: Codable {
    let version, encoding: String

    enum CodingKeys: String, CodingKey {
        case version = "@version"
        case encoding = "@encoding"
    }
}
