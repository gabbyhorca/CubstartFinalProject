//
//  Result.swift
//  DartApp
//
//  Created by raven on 4/24/23.
//

import Foundation
import SwiftUI

struct Result: View{
    @Binding var tripList: [Trip]
    
    @State var location = ""
    @State var add = false
    var body: some View {
       VStack {
           ZStack {
               Image("map")
                   .resizable()
                   .frame(width: 400, height: 500, alignment: .top)
               HStack {
                   Image(systemName: "person.circle")
                       .resizable()
                       .scaledToFit()
                       .padding()
                       .frame(width: 70, height: 70, alignment: .topLeading)
                   Spacer()
               }
           }
           HStack {
               Text("Naya Dessert Cafe")
                   .font(.title)
                   .padding([.leading, .top], 20)
                   .padding(.bottom, 0.3)
                   .frame(maxWidth: .infinity, alignment: .leading)
               Image(systemName: "xmark.circle.fill")
                   .resizable()
                   .frame(width: 30, height: 30, alignment: .trailing)
                   .padding(.top, 20)
                   .padding(.trailing, 20)
               Spacer()
           }
           Text("11 mi. 535 Octavia St, San Francisco")
               .font(.subheadline)
               .padding(.leading, 20)
               .frame(maxWidth: .infinity, alignment: .leading)
               .foregroundColor(.gray)
           
           Button {
               add.toggle()
           } label: {
               Label("Add to Schedule", systemImage: "plus")
           }
           
           .foregroundColor(.white)
           .padding([.top, .bottom], 10)
           .padding([.leading, .trailing], 20)
           .background(.yellow.opacity(0.7))
           .font(.system(size: 20, weight: .bold))
           .cornerRadius(30)
           .frame(maxWidth: .infinity, alignment: .leading)
           .padding(.leading, 20)
           .padding(.top, 8)

           
           
           Spacer()
           
           HStack {
               NavigationStack {
                   NavigationLink {
                       Home(tripList: $tripList)
                           .frame(maxWidth: .infinity, maxHeight: .infinity)
                           .edgesIgnoringSafeArea(.all)
                   } label: {
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
                   }
               }
           }
       }
    }
}
struct Result_Previews: PreviewProvider {
    @State static var tlist: [Trip] = []
    static var previews: some View {
        Result(tripList: $tlist)
    }
}
