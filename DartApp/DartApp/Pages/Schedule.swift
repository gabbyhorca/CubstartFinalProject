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
    
    @StateObject var dummyt1 : Trip = Trip(name: "Test Trip 1", time: "3:00", date: "5/11/23", trainLine: "Red", tripStart: "Downtown Berkeley", tripDestination: "Embarcadero")
    @StateObject var dummyt2 : Trip = Trip(name: "Test Trip 2", time: "5:00", date: "5/12/23", trainLine: "Blue", tripStart: "Downtown Berkeley", tripDestination: "Ashby")
    
    func addTripListItems() {
        tripList = [dummyt1, dummyt2]
        //Add your objects to your list here!
        
    }
    
    var body: some View {
        NavigationView{
            VStack {
                HStack{
                    NavigationLink {
                        Home()
                    } label: {
                        Button(action: {
                            
                        }, label: {
                            HStack {
                                Image("backArrow")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(50)
                                    .frame(width: 20, height: 20)
                                Text("Back").foregroundColor(.black)
                            }
                        })
                    }
                    Spacer()
                }
                VStack{
                    HStack {
                        
                        Text("Current Schedule")
                            .padding(.top, 20)
                            .font(.system(size: 24, weight: .light, design: .default))
                        Spacer()
                    }
                    Color
                        .black
                        .frame(width: 350, height: 5 / UIScreen.main.scale)
                        .multilineTextAlignment(.leading)
                        .padding(-10)
                    
                    ScrollView {
                        VStack(alignment: .leading) {
                            ForEach(tripList) {i in
                                VStack{
                                    HStack{
                                        Text(i.date)
                                            .font(.system(size: 15, weight: .light, design: .default))
                                        Text(i.name)
                                        Spacer()
                                        Button("Edit"){
                                            
                                        }.frame(maxWidth: .infinity, alignment: .trailing)
                                        Spacer()
                                    }
                                    HStack {
                                        
                                        Text(i.time)
                                        Text(i.tripStart)
                                        Text(" - ")
                                        Text(i.tripDestination)
                                        Spacer()
                                    }
                                    Color
                                        .gray
                                        .frame(width: 350, height: 1 / UIScreen.main.scale)
                                        .multilineTextAlignment(.leading)
                                    Spacer()
                                }
                            }
                        }
                    }
                    Spacer()
                }
            }.onAppear(perform: addTripListItems)
                .padding()
        }
    }
}

struct Schedule_Previews: PreviewProvider {
    static var previews: some View {
        AddToSchedule()
    }
}
