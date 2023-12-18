//
//  FluidCirclesSceneView.swift
//  SwiftUIExamples
//
//  Created by Chris J W Walker on 18/12/2023.
//

import SwiftUI

extension Animations.Loading.FluidCircles {
    struct SceneView: View {
        @State private var animate: Bool = false
        
        let radius: CGFloat = 12
        let dots: Int = 24
        let offset: CGFloat
        let pi: Double = Double.pi
        let dotLength: CGFloat = 8
        let spaceLength: CGFloat
        
        init() {
            let arcLength = CGFloat(2.0 * pi) * radius
            spaceLength = arcLength / CGFloat(dots) - dotLength
            offset = 200
        }
        
        var body: some View {
            ZStack {
                ForEach(0 ..< dots, id: \.self) { item in
                    Circle()
                        .stroke(
                            LinearGradient(
                                colors: [.blue, .cyan, .indigo],
                                startPoint: .top,
                                endPoint: .bottom
                            ),
                            style: StrokeStyle(
                                lineWidth: 2,
                                lineCap: .round,
                                lineJoin: .round,
                                miterLimit: 10,
                                dash: [dotLength, spaceLength],
                                dashPhase: 0
                            )
                        )
                        .frame(
                            width: radius * CGFloat(item),
                            height: radius * CGFloat(item)
                        )
                        .offset(y: animate ? -offset : offset)
                        .animation(
                            .easeInOut(duration: TimeInterval(2.5))
                            .repeatForever(autoreverses: true)
                            .delay((0.1 * Double(dots - item)))
                            ,
                            value: animate
                        )
                }
            }
            .onAppear {
                animate.toggle()
            }
        }
    }
}

#Preview {
    Animations.Loading.FluidCircles.SceneView()
        .preferredColorScheme(.dark)
}
