//
//  AddToSchedule.swift
//  DartApp
//
//  Created by Gabby Horca on 4/24/23.
//

import Foundation
import SwiftUI

struct AddToSchedule: View{
    @Binding var tripList: [Trip]
    @Binding var startLoc: String
    @Binding var endLoc: String
    @State var name = ""
    @State var date = Date()
    @State var trainLine = ""
    @State var tripStart = ""
    @State var tripDestination = ""
    @State private var showingSheet2 = true
    @StateObject var newtrip : Trip = Trip(name: "", date: Date(), trainLine: "Red", tripStart: "Downtown Berkeley", tripDestination: "Embarcadero")
    
    let notify = NotificationHandler()
    
    
    func addTrip(name: String, date: Date, trainLine: String, tripStart: String, tripDestination: String) {
        let tempTrip = Trip(name: name, date: date, trainLine: trainLine, tripStart: tripStart, tripDestination: tripDestination)
        tripList.append(tempTrip)
        print("Trip added")
        let title = "Reminder: Scheduled Trip"
        let b = "Train for " + name + " will depart soon"
        notify.sendNotification(date: date, type: "date", title: title, body: b)
        
    }
    

    
    var body: some View {
        VStack {
            HStack {
                NavigationStack {
                    NavigationLink {
                        Home(tripList : $tripList, location: endLoc)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .edgesIgnoringSafeArea(.all)
                    } label: {
//                        Image(systemName: "arrow.backward")
//                            .resizable()
//                            .frame(width: 20, height: 20, alignment: .topLeading)
//                            .scaledToFit()
//                        Text("Back")
//                            .font(.system(size: 19))
                    }
                    .frame(alignment: .topLeading)
                    // Trying to call dismiss() here 
//                    .onTapGesture {
//                        .sheet(isPresented: $showingSheet2) {
//                            Sheet2()
//                                .padding()
//                                .presentationDetents([.height(220), .medium, .large])
//                        }
                    }
                }
//            }

            Text("New Schedule")
                .padding(.leading, 35)
                .font(.system(size: 25, weight: .regular, design: .default))
                .frame(maxWidth: .infinity, alignment: .topLeading)
                .padding(.top, 20)
            
            HStack {
                Text("Name")
                TextField("Name", text: $name)
                    .multilineTextAlignment(.leading)
                    .padding(5)
                    .padding([.leading, .trailing], 10)
                    .padding([.bottom, .top], 3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(19)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
            }
            .padding([.leading, .trailing], 35)
            .font(.system(size: 20))
            
            HStack {
                Text("Date")
                    .padding(.trailing, 10)
                DatePicker("Date", selection: $date, displayedComponents: [.date, .hourAndMinute])
                    .multilineTextAlignment(.leading)
                    .padding(5)
                    .padding([.leading, .trailing], 10)
                    .padding([.bottom, .top], 3)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(.gray.opacity(0.2))
                    .cornerRadius(19)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
            }
            .padding([.leading, .trailing], 35)
            .font(.system(size: 20))
            
//            HStack {
//                Text("Time")
//                    .padding(.trailing, 6)
//                TextField("Time", text: $time)
//                    .multilineTextAlignment(.leading)
//                    .padding(5)
//                    .padding([.leading, .trailing], 10)
//                    .padding([.bottom, .top], 3)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .background(.gray.opacity(0.2))
//                    .cornerRadius(19)
//                    .disableAutocorrection(true)
//                    .autocapitalization(.none)
//            }
            .padding([.leading, .trailing], 35)
            .font(.system(size: 20))
            
            
            HStack {
                Text("Line")
                    .padding(.top, 30)
                Image(systemName: "tram")
                    .padding(10)
                    .padding([.leading, .trailing], 10)
                    .padding([.bottom, .top], 3)
                    .padding(.top, 30)
                Text("Downtown Berkeley - Embarcadero")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 30)
                
            }
            .padding([.leading, .trailing], 35)
            .font(.system(size: 20))
            
            ZStack {
                Button{
                action: do{
                    addTrip(name: name, date: date, trainLine: "red", tripStart: startLoc, tripDestination: endLoc);
                    print(tripList[tripList.count - 1].name)}
                    Home(tripList: $tripList)
                    // I'm trying to create an instance of a trip, then add that new trip to the tripList
                    
//                    print("Added to Schedule")

//                    let newtrip = Trip(name: "date w bf", time: "", date: "", trainLine: "", tripStart: "", tripDestination: "")
//                    newtrip.addTripListItems(trip: newtrip)
//                    Home()
                    
                } label: {
                    Label("Add to Schedule", systemImage: "plus")
                }
            }
            .padding(.top, 70)
            .font(.title2)
            Spacer()
            Spacer()
            Spacer()
                .padding(.bottom, 100)
        }.onAppear(perform: notify.askPermission)

    }
}
struct Sheet2: View {
    @Binding var tripList: [Trip]
    
    @State var location = ""
    @State var showResults = false
    //This code allows us to call the dismiss() function which closes the sheet view
    @Environment(\.dismiss) var dismiss
    //    if (location.count > 0) {
    //        showResults = true
    //    }
    var body: some View {
        Home(tripList : $tripList, location: location)
            .interactiveDismissDisabled()
            .padding().foregroundColor(.black)
    }
}

struct AddToSchedule_Previews: PreviewProvider {
    @State static var tlist: [Trip] = []
    @State static var sLoc : String = ""
    @State static var eLoc: String = ""
   static var previews: some View {
       AddToSchedule(tripList: $tlist, startLoc: $sLoc, endLoc: $eLoc, trainLine: "red")
   }
}
