//
//  ContentView.swift
//  Learn Japan!
//
//  Created by Tomas Sanni on 12/24/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        HomeView()
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
                .previewDevice("iPhone 11 Pro Max")
        }
        
        NavigationView {
            ContentView()
                .previewDevice("iPhone SE (3rd generation)")
        }
            
    }
}
