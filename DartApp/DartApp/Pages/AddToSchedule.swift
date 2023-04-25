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
    @State var day = ""
    @State var time = ""
    var body: some View {
       VStack {
           HStack {
               Image(systemName: "arrow.backward")
                   .resizable()
                   .frame(width: 20, height: 20, alignment: .topLeading)
                   .padding(.leading, 20)
                   .scaledToFit()
               Text("Back")
                   .font(.system(size: 18))
               
               Spacer()
           }
           .padding([.top, .bottom], 20)
           
           
          Text("New Schedule")
               .padding(.leading, 35)
               .font(.system(size: 25, weight: .regular, design: .default))
               .frame(maxWidth: .infinity, alignment: .topLeading)
           
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
           }
           .padding([.leading, .trailing], 35)
           .font(.system(size: 20))
           
           HStack {
               Text("Date")
                   .padding(.trailing, 10)
               TextField("Date", text: $name)
                   .multilineTextAlignment(.leading)
                   .padding(5)
                   .padding([.leading, .trailing], 10)
                   .padding([.bottom, .top], 3)
                   .frame(maxWidth: .infinity, alignment: .leading)
                   .background(.gray.opacity(0.2))
                   .cornerRadius(19)
           }
           .padding([.leading, .trailing], 35)
           .font(.system(size: 20))
           
           HStack {
               Text("Time")
                   .padding(.trailing, 6)
               TextField("Time", text: $name)
                   .multilineTextAlignment(.leading)
                   .padding(5)
                   .padding([.leading, .trailing], 10)
                   .padding([.bottom, .top], 3)
                   .frame(maxWidth: .infinity, alignment: .leading)
                   .background(.gray.opacity(0.2))
                   .cornerRadius(19)
           }
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
               Image(systemName: "plus")

//                   .padding(.top, 90)
                   .aspectRatio(contentMode: .fill)
                   .padding(10)
                   .padding([.leading, .trailing], 30)
                   .background(.gray.opacity(0.2))
                   .font(.system(size: 40))
                   .clipShape(Circle())
           }
           .padding(.top, 70)
           Text("Add to Schedule")
               .foregroundColor(.gray.opacity(0.7))
               .font(.system(size: 15))
           Spacer()
       }
    }
}

struct AddToSchedule_Previews: PreviewProvider {
    static var previews: some View {
        AddToSchedule()
    }
}
