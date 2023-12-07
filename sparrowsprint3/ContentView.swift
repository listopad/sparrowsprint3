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
            withAnimation(.spring(bounce: 0.3).repeatCount(0)) {
                animationProgress = 1.0
            } completion: {
                animationProgress = 0.0
            }
        }) {
            
            HStack(spacing: 0) {
                Image(systemName: "play.fill")
                    .offset(x: 14)
                    .offset(x: animationProgress * 24)
                
                Image(systemName: "play.fill")
                    .offset(x: 8)
                    .scaleEffect(1.0 - animationProgress)
                
                Image(systemName: "play.fill")
                    .offset(x: 14)
                    .scaleEffect(animationProgress)
                    .offset(x: -60)
            }
        }
        .font(.largeTitle)
    }
    
}

#Preview {
    ContentView()
}
