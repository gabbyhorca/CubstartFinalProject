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
          Image("oski").resizable().scaledToFit().cornerRadius(50).frame(width: 70.0, height: 70.0).clipShape(Circle())
       }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
