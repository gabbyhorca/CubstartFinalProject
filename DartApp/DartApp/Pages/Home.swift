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

struct Home: View {
    
    @State private var showingSheet1 = true
   var body: some View {
      //NavigationStack(){
         
         Group {
             VStack {
                 ZStack {
                     Image("map")
                         .resizable()
                         .frame(maxHeight: .infinity, alignment: .top)
//                     NavigationStack {
                             NavigationLink {
                                 Profile()
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
//                         }
                     }
                 Button(action: {
                     
                 }, label: {
                     
                 }).sheet(isPresented: $showingSheet1) {
                     Sheet1()
                         .padding()
                         .presentationDetents([.height(220), .medium, .large])
                 }
             }
         }
   }
}


struct Sheet1: View {
    @State var location = ""
    @State var showResults = false
   //This code allows us to call the dismiss() function which closes the sheet view
    @Environment(\.dismiss) var dismiss
//    if (location.count > 0) {
//        showResults = true
//    }
   var body: some View {
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
               
               Text("Results")
                  .foregroundColor(.black)
                  .padding(.trailing, 250)
                  .padding(3)
                
               //button should lead to results page
                
//               Button("Naya Resto") {
//
//               }
//               .foregroundColor(.black)
//               .padding(.trailing, 200)
            }
            
            Spacer()
            
            HStack {
               Button(action: {
                   
               }, label: {
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
               })
               .interactiveDismissDisabled()
               .padding().foregroundColor(.black)
            }
         }
   }
}

struct Home_Previews: PreviewProvider {
   static var previews: some View {
      Home()
   }
}
