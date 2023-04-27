//
//  Station.swift
//  DartApp
//
//  Created by Gabby Horca on 4/26/23.
//

import Foundation

struct Station: Codable {
   let name : String
   let abbr : String
   let etd : [ETD]
}
