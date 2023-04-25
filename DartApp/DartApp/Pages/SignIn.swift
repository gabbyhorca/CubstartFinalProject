//
//  SignIn.swift
//  DartApp
//
//  Created by Gabby Horca on 4/24/23.
//

import Foundation
import SwiftUI

struct SignIn: View{
    @State var email = ""
    @State var password = ""
    @State var loggedIn = false
    @State var forgotPassword = false
    @State var signUp = false
    var body: some View {
        
        
        
        
       VStack {
           Image("bart lines")
               .resizable()
               .scaledToFit()
               .frame(width: 400, height: 400, alignment: .top)
               .aspectRatio(1.0, contentMode: .fit)
           
           Text("Username")
               .multilineTextAlignment(.leading)
               .font(.system(size: 19))
               .frame(maxWidth: 300, alignment: .leading)
           
           TextField("Username", text: $email)
               .multilineTextAlignment(.leading)
               .textFieldStyle(.roundedBorder)
               .textFieldStyle(PlainTextFieldStyle())
               .padding([.horizontal], 4)
               .frame(maxWidth: 300, alignment: .leading)
               .disableAutocorrection(true)
               .autocapitalization(.none)
               .frame(height: 40)
           

           Text("Password")
               .multilineTextAlignment(.leading)
               .font(.system(size: 19))
               .frame(maxWidth: 300, alignment: .leading)
           
           HStack {
               SecureField("Password", text: $password)
                   .multilineTextAlignment(.leading)
                   .textFieldStyle(.roundedBorder)
                   .textFieldStyle(PlainTextFieldStyle())
                   .padding([.horizontal], 4)
                   .frame(maxWidth: 300, alignment: .leading)
                   .disableAutocorrection(true)
                   .autocapitalization(.none)
               
           }
           Button("Forgot Password?") {
               forgotPassword.toggle()
           }
           .toggleStyle(.automatic)
           .foregroundColor(.blue)
           .frame(maxWidth: 300, alignment: .trailing)
           .font(.system(size: 13))
           
           
           HStack {
               Button("Log In") {
                   loggedIn.toggle()
               }
               .frame(height: 100, alignment: .center)
               .buttonStyle(.bordered).tint(.blue)
               .toggleStyle(.button)
               .font(.system(size: 21))

               Image(systemName: "arrow.right")
           }
           
           
           HStack {
               Text("Don't have an account?")
               Button("Sign Up!") {
                   signUp.toggle()
               }
           }
           Spacer()
       }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
