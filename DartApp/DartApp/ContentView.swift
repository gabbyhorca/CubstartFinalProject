//
//  ContentView.swift
//  DartApp
//
//  Created by Gabby Horca on 4/24/23.
//

import SwiftUI

struct ContentView: View {
    //@State private var presentedViews: [any View] = []
    @State var tlist : [Trip] = []
    
    var body: some View {
       
        //SignIn()
        Home(tripList: $tlist)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
