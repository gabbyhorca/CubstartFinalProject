//
//  SignIn.swift
//  DartApp
//
//  Created by Gabby Horca on 4/24/23.
//

import Foundation
import SwiftUI
import Firebase
import FirebaseCore
import FirebaseAuth

struct SignIn: View {
    @State var tripList: [Trip] = []
    
    @State var testemail = "test@gmail.com"
    @State var testpassword = "12345#"
    @State var email = ""
    @State var password = ""
    @State var loggedIn = false
    @State var forgotPassword = false
    @State var signUp = false
    @State var loginError = false
    
    init() {
        FirebaseApp.configure()
    }
    
    func login() {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else {
                //                TODO: update the variable to track that the user has successfully logged in
                loggedIn = true;
                print("success")
                Color.white
                    .ignoresSafeArea()
                Home(tripList : $tripList)
            }
        }
    }
    
    func createAcct() {
        Auth.auth().createUser(withEmail: email, password: password) { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                loginError = true
            } else {
                //                TODO: update the variable to track that the user has successfully logged in
                               signUp.toggle();
                                print("success")
                            }
                        }
                    }
    
    var body: some View {
        if (loggedIn) {
            Home(tripList : $tripList)
        }
        
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
           
           TextField("Email", text: $email)
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
               Button(action: {login()}) {
                   Text("Log in")
               }
               .frame(height: 100, alignment: .center)
               .buttonStyle(.bordered).tint(.blue)
               .toggleStyle(.button)
               .font(.system(size: 21))

               Image(systemName: "arrow.right")
           }
           
           
           HStack {
               Text("Don't have an account?")
               Button(action : {createAcct()}) {
                   Text("Sign Up with Entered Credentials")
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
