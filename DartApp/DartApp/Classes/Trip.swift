//
//  Trip.swift
//  DartApp
//
//  Created by Jason Mooney on 4/24/23.
//

import Foundation
import SwiftUI

public class Trip : ObservableObject, Identifiable {
    var name : String
    var time : String
    var date : String
    var trainLine: String
    var tripStart: String
    var tripDestination: String
    
    init(name: String, time: String, date: String, trainLine: String, tripStart: String, tripDestination: String) {
        self.name = name
        self.time = time
        self.date = date
        self.trainLine = trainLine
        self.tripStart = tripStart
        self.tripDestination = tripDestination
    }
}
