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
         Task {
            do {
               let estimatedDep = try await fetchEstimatedDepartureTimes()
            }
         }
      }
      
   }
}

struct TestingPage_Previews: PreviewProvider {
   static var previews: some View {
      TestingPage()
   }
}
