//
//  ContentView.swift
//  sparrowsprint3
//
//  Created by Artem Dragunov on 05.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: signIn) {
            Group {
                Image(systemName: "play.fill")
                Image(systemName: "play.fill")
            }.font(.largeTitle)
            
        }
    }
    
    func signIn() {
        
    }
}

#Preview {
    ContentView()
}
