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
    
    init(name: String, time: String, date: String, trainLine: String) {
        self.name = name
        self.time = time
        self.date = date
        self.trainLine = trainLine
    }
}
