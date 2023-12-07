//
//  ContentView.swift
//  sparrowsprint3
//
//  Created by Artem Dragunov on 05.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State var playNext = false
    @State private var animationProgress: Double = 0.0
    
    var body: some View {
        Button(action: {
            withAnimation() {
                animationProgress = 1.0
            } completion: {
                animationProgress = 0.0
            }
        }) {
            
            HStack(spacing: 0) {
                Image(systemName: "play.fill")
                    .offset(x: 15)
                    .foregroundStyle(.red)
                    .offset(x: animationProgress * 20)
                
                Image(systemName: "play.fill")
                    .offset(x: 10)
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
