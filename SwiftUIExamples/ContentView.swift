//
//  ContentView.swift
//  SwiftUIExamples
//
//  Created by Chris J W Walker on 11/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                Group {
                    NavigationLink("Fluid circles", destination: {
                        Animations.Loading.FluidCircles.SceneView()
                    })
                    NavigationLink("Animated circles", destination: {
                        Animations.Loading.Circles.SceneView()
                    })
                    NavigationLink("Sliding text", destination: {
                        SlidingTextSceneView()
                    })
                    NavigationLink("Image select", destination: {
                        ImageSelect.SceneView()
                    })
                    NavigationLink("Pull to refresh", destination: {
                        PullToRefresh.Examples.view
                    })
                }
            }
            .navigationTitle(Text("SwiftUIExamples"))
        }
    }
}

#Preview {
    ContentView()
}
