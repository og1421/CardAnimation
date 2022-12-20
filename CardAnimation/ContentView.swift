//
//  ContentView.swift
//  CardAnimation
//
//  Created by Orlando Moraes Martins on 20/12/22.
//

import SwiftUI

struct ContentView: View {
    @State private var dragAmount = CGSize.zero
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.red]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged{ dragAmount = $0.translation}
                    .onEnded{_ in
                        withAnimation{
                            dragAmount = .zero
                        }
                    }
            )
        
    }
}
