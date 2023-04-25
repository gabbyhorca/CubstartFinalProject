//
//  Profile.swift
//  DartApp
//
//  Created by Gabby Horca on 4/24/23.
//

import Foundation
import SwiftUI

struct Profile: View{
   var body: some View {
      VStack {
         Button(action: {
            print("nothing")
         }, label: {
            HStack {
               Image("homeIcon")
                  .resizable()
                  .scaledToFit()
                  .cornerRadius(50)
                  .frame(width: 20.0, height: 20.0)
               
               Text("Home")
                  .font(.system(size: 12, weight: .regular, design: .default))
                  .foregroundColor(.black)
               
               
               Spacer()
            }
         })
         .padding(.bottom, 40)
         
         Group {
            Text("Settings")
               .font(.system(size: 35, weight: .regular, design: .default))
            
            Image("oski")
               .resizable()
               .scaledToFit()
               .cornerRadius(50)
               .frame(width: 90.0, height: 90.0)
               .clipShape(Circle())
            
            Button(action: {
               print("nothing")
            }, label: {
               HStack {
                  Image("editicon")
                     .resizable()
                     .scaledToFit()
                     .cornerRadius(50)
                     .frame(width: 20.0, height: 20.0)
                  Text("edit")
                     .font(.system(size: 12, weight: .regular, design: .default))
                     .foregroundColor(.blue)
               }
            })
            .padding(.bottom, 40)
            
            HStack {
               VStack(alignment: .leading) {
                  Text("Username")
                     .multilineTextAlignment(.leading)
                     .foregroundColor(.gray)
                     .padding(.bottom, 0.5)
                  
                  Text("theRealOski")
                     .multilineTextAlignment(.leading)
               }
               Spacer()
            }
            .padding(.trailing, 220)
            
            Color
               .black
               .frame(width: 350, height: 1 / UIScreen.main.scale)
               .multilineTextAlignment(.leading)
            HStack {
               Spacer()
               Button(action: {
                  print("nothing")
               }, label: {
                  HStack {
                     Image("editicon")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(50)
                        .frame(width: 20.0, height: 20.0)
                     Text("edit")
                        .font(.system(size: 12, weight: .regular, design: .default))
                        .foregroundColor(.blue)
                  }
               })
            }
            
            HStack {
               VStack(alignment: .leading) {
                  Text("Password")
                     .multilineTextAlignment(.leading)
                     .foregroundColor(.gray)
                     .padding(.bottom, 0.5)
                  
                  Text(" .........")
                     .multilineTextAlignment(.leading)
               }
               Spacer()
            }
            .padding(.trailing, 220)
            
            Color
               .black
               .frame(width: 350, height: 1 / UIScreen.main.scale)
               .multilineTextAlignment(.leading)
            HStack {
               Spacer()
               Button(action: {
                  print("nothing")
               }, label: {
                  HStack {
                     Image("editicon")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(50)
                        .frame(width: 20.0, height: 20.0)
                     Text("edit")
                        .font(.system(size: 12, weight: .regular, design: .default))
                        .foregroundColor(.blue)
                  }
               })
            }
         }
      }
      Spacer()
      HStack {
         Spacer()
         Button(action: {
            print("nothing")
         }, label: {
            
            Text("Log Out")
               .font(.system(size: 15, weight: .regular, design: .default))
               .foregroundColor(.red)
         })
      }
   }
   
   struct Profile_Previews: PreviewProvider {
      static var previews: some View {
         Profile()
      }
   }
}
