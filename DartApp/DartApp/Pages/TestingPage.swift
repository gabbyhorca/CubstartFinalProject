//
//  TestingPage.swift
//  DartApp
//
//  Created by Gabby Horca on 4/26/23.
//

import Foundation
import SwiftUI

struct TestingPage: View {
    @Binding var tripList: [Trip]
    
   var body: some View {
      
      VStack {
         Text("Pls")
      }
      .task {
         do {
            let estimatedDep = try await fetchReturnedData()
               print(estimatedDep!.root.date)
            print("here")
         } catch {
            print("boo")
         }
      }
      
   }
}

struct TestingPage_Previews: PreviewProvider {
    @State static var tlist: [Trip] = []
    static var previews: some View {
        Result(tripList: $tlist)
    }
}
