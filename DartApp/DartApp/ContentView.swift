//
//  ContentView.swift
//  DartApp
//
//  Created by Gabby Horca on 4/24/23.
//

import SwiftUI

struct ContentView: View {
    @State var navPath = NavigationPath()
    @State var back = false;
    //@State private var presentedViews: [any View] = []
    
    var body: some View {
        NavigationStack(path: $navPath){
            Home(navPath: $navPath)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
