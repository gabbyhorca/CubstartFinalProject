//
//  ETD.swift
//  DartApp
//
//  Created by Gabby Horca on 4/26/23.
//

import Foundation

struct ETD: Codable {
   let destination : String
   let abbreviation : String
   let limited : String
   let estimate : [EtdInfo]
   let message : String
}
