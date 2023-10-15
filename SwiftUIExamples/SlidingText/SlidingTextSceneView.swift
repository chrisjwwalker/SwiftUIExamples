//
//  SlidingTextSceneView.swift
//  SwiftUIExamples
//
//  Created by Chris J W Walker on 14/10/2023.
//

import SwiftUI

struct SlidingTextSceneView: View {
    
    @State private var go = false
    
    var body: some View {
        VStack {
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                .font(.title)
        }
        .fixedSize()
        .frame(width: 300, alignment: go ? .trailing : .leading)
        .clipped()
        .onAppear { self.go.toggle() }
        .animation(Animation.linear(duration: 10).repeatForever(autoreverses: true))
    }
}

#Preview {
    SlidingTextSceneView()
}
