//
//  Schedule.swift
//  DartApp
//
//  Created by Gabby Horca on 4/24/23.
//


import Foundation
import SwiftUI

struct Schedule: View {
    @State var tripList: [Trip] = []
    
    @StateObject var t1 : Trip = Trip(name: "test", time: "3:00", date: "3.11.23", trainLine: "red")
    
    func addTripList () {
        tripList = [t1]
    }
    
    var body: some View {
        VStack {
            Button("Back") {
                Image("backArrow")
            }.position(x: -90, y: 300)
            Text("Schedule")
            
            //ForEach(tripList) {i in
            //  VStack(alignment: .leading)
            //}
            //Text
            //}
        }
    }
}

struct Schedule_Previews: PreviewProvider {
    static var previews: some View {
        AddToSchedule()
    }
}
