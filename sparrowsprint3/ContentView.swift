//
//  ContentView.swift
//  sparrowsprint3
//
//  Created by Artem Dragunov on 05.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State var playNext = false
    
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut(duration: 2)) {
                playNext.toggle()
            }
        }) {
            
            HStack(spacing: 0) {
                Image(systemName: "play.fill")
                    .offset(x: 15)
                    .foregroundStyle(.red)
                
                Image(systemName: "play.fill")
                    .offset(x: 9)
                    .foregroundStyle(.green)
                
                Image(systemName: "play.fill")
                    .offset(x: 15)
                    .offset(x: -60)
            }
        }
            .font(.largeTitle)
    }
    
}

#Preview {
    ContentView()
}
