//
//  TestingPage.swift
//  DartApp
//
//  Created by Gabby Horca on 4/26/23.
//

import Foundation
import SwiftUI

struct TestingPage: View {
   
   var body: some View {
      
      VStack {
         
      }
      .task {
         do {
            let estimatedDep = try await fetchReturnedDataContinuous()
            print(estimatedDep.root.date)
         } catch {
            print("boo")
         }
      }
      
   }
}

struct TestingPage_Previews: PreviewProvider {
   static var previews: some View {
      TestingPage()
   }
}
