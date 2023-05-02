//
//  AddToSchedule.swift
//  DartApp
//
//  Created by Gabby Horca on 4/24/23.
//

import Foundation
import SwiftUI

struct AddToSchedule: View{
    @State var name = ""
    @State var date = Date()
    @State var time = ""
    @State private var showingSheet2 = true
    @StateObject var newtrip : Trip = Trip(name: "", time: "", date: "", trainLine: "Red", tripStart: "Downtown Berkeley", tripDestination: "Embarcadero")
    
    var body: some View {
        VStack {
            HStack {
                NavigationStack {
                    NavigationLink {
                        Home()
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
        }

    }
}
struct Sheet2: View {
    @State var location = ""
    @State var showResults = false
    //This code allows us to call the dismiss() function which closes the sheet view
    @Environment(\.dismiss) var dismiss
    //    if (location.count > 0) {
    //        showResults = true
    //    }
    var body: some View {
        Home()
            .interactiveDismissDisabled()
            .padding().foregroundColor(.black)
    }
}

struct AddToSchedule_Previews: PreviewProvider {
    static var previews: some View {
        AddToSchedule()
    }
}
