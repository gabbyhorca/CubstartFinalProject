//
//  Schedule.swift
//  DartApp
//
//  Created by Gabby Horca on 4/24/23.
//


import Foundation
import SwiftUI

struct Schedule: View {
    
    @Binding var tripList: [Trip]
    
    @StateObject var dummyt1 : Trip = Trip(name: "Test Trip 1", date: Date(), trainLine: "Red", tripStart: "Downtown Berkeley", tripDestination: "Embarcadero")
    @StateObject var dummyt2 : Trip = Trip(name: "Test Trip 2", date: Date(), trainLine: "Blue", tripStart: "Downtown Berkeley", tripDestination: "Ashby")
    
    func addTripListItems() {
        tripList = [dummyt1, dummyt2]
        // Trying to generalize code by appendng new trip to existing tripList. Maybe let this func has a trip argument? 
//        tripList.append(trip)
        //Add your objects to your list here!
        
    }
    
    var body: some View {
        NavigationView{
            VStack {
                HStack{
                    NavigationLink {
                        Home(tripList: $tripList)
                    } label: {
                        Button(action: {
                            
                        }, label: {
                            HStack {
                               NavigationLink {
                                   Home(tripList: $tripList)
                                       .frame(maxWidth: .infinity, maxHeight: .infinity)
                                       .edgesIgnoringSafeArea(.all)
                               } label: {
                                   Image(systemName: "arrow.backward")
                                       .resizable()
                                       .frame(width: 20, height: 20, alignment: .topLeading)
                                       .scaledToFit()
                                   Text("Back")
                                       .font(.system(size: 19))
                               }
                               .frame(alignment: .topLeading)
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
                                        Text(i.date.description)
                                            .font(.system(size: 15, weight: .light, design: .default))
                                        Text(i.name)
                                        Spacer()
                                        Button("Edit"){
                                            
                                        }.frame(maxWidth: .infinity, alignment: .trailing)
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
    @State static var tlist: [Trip] = []
    static var previews: some View {
        Schedule(tripList: $tlist)
    }
}
