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
    @Binding var navPath = NavigationPath
    
    @State var location = ""
    var body: some View {
        NavigationView{
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
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 50, height: 8)
                    .padding(2)
                    .foregroundColor(.gray.opacity(0.3))
                
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
                
                Spacer()
                
                HStack {
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
                }
            }
        }.navigationTitle("home")
    }
}

struct Home_Previews: PreviewProvider {
   static var previews: some View {
      Home()
   }
}
