//
//  Home.swift
//  DartApp
//
//  Created by Gabby Horca on 4/24/23.
//

//has a swipe up search page
//results page included
import Foundation
import SwiftUI


func askPermission() {
    UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.badge,.sound]) { success, error in
        if success {
            print("Access Granted")
        } else if let error = error{
            print(error.localizedDescription)
        }
    }
}
struct Home: View {
    @Binding var tripList: [Trip]
    @State var start : String = "UC Berkeley"
    @State var location = ""
    @State var showingSheet1 = true
    
    var body: some View {
        NavigationStack(){
            Group {
                VStack {
                    ZStack {
                        
                        Image("map")
                            .resizable()
                            .frame(maxHeight: .infinity, alignment: .top)
                        //                     NavigationStack {
                        NavigationLink {
                           Profile(tripList: $tripList).navigationBarBackButtonHidden(true)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .edgesIgnoringSafeArea(.all)
                        } label: {
                            Image(systemName: "person.circle")
                                .resizable()
                                .scaledToFit()
                                .padding()
                                .frame(width: 70, height: 70, alignment: .topLeading)
                                .position(x: 30, y: 65)
                        }
                        Button(action: {
                            showingSheet1 = false
                        }, label: {
                            
                        }).sheet(isPresented: $showingSheet1) {
                            Sheet1(tripList: $tripList, start: $start, location: $location)
                                .padding()
                                .presentationDetents([.height(220), .medium, .large])
                        }
                    }
                }.onAppear(perform: askPermission)
            }
        }
    }
}


struct Sheet1: View {

    @Binding var tripList: [Trip]
    @Binding var start : String
    @Binding var location : String
    @State var showResults = false

   
   //This code allows us to call the dismiss() function which closes the sheet view
   @Environment(\.dismiss) var dismiss
   //    if (location.count > 0) {
   //        showResults = true
   //    }
   var body: some View {
      
      NavigationStack(){
         Group {
            VStack {
               TextField("Add a location", text: $location)
                  .multilineTextAlignment(.leading)
                  .frame(maxWidth: 290, alignment: .leading)
                  .disableAutocorrection(true)
                  .autocapitalization(.none)
                  .frame(height: 20)
                  .padding(5)
                  .padding([.leading, .trailing], 17)
                  .padding([.bottom, .top], 3)
                  .background(.gray.opacity(0.2))
                  .cornerRadius(19)
                  .padding(.top, 10)
               HStack {
                  Text("Results")
                     .foregroundColor(.black)
                     .padding(3)
                  NavigationLink {
                     AddToSchedule(tripList: $tripList, startLoc: $start, endLoc: $location)
                       .frame(maxWidth: .infinity, maxHeight: .infinity)
                       .edgesIgnoringSafeArea(.all)
                  } label: {
                     Text("Add to schedule")
                  }
               }
               
               
               //button should lead to results page
               
               //               Button("Naya Resto") {
               //
               //               }
               //               .foregroundColor(.black)
               //               .padding(.trailing, 200)
            }
            
            Spacer()
            
            HStack {
               NavigationLink(destination: Schedule(tripList: $tripList)) {
                     
                  Image(systemName: "list.bullet.below.rectangle")
                     .resizable()
                     .frame(width: 45, height: 45, alignment: .bottomLeading)
                     .aspectRatio(contentMode: .fill)
                     .padding(20)
                     .cornerRadius(50)
                     .background(.gray.opacity(0.2))
                     .scaledToFit()
                     .padding([.leading, .trailing], 30)
                     .clipShape(Circle())
                  Spacer()
               }.padding().foregroundColor(.black)
            
//               Button(action: {
//                   dismiss();
//                  //Schedule(tripList: $tripList)
//               }, label: {
//                  Image(systemName: "list.bullet.below.rectangle")
//                     .resizable()
//                     .frame(width: 45, height: 45, alignment: .bottomLeading)
//                     .aspectRatio(contentMode: .fill)
//                     .padding(20)
//                     .cornerRadius(50)
//                     .background(.gray.opacity(0.2))
//                     .scaledToFit()
//                     .padding([.leading, .trailing], 30)
//                     .clipShape(Circle())
//                  Spacer()
//               })
//               .padding().foregroundColor(.black)
            }
         }
      }
      
   }
   

}

struct Home_Previews: PreviewProvider {
    @State static var tlist: [Trip] = []
    static var previews: some View {
        Home(tripList: $tlist, location: "Union Square")
    }
}


