//
//  MovingCircle.swift
//  SwiftUIExamples
//
//  Created by Chris J W Walker on 17/12/2023.
//

import SwiftUI

extension Animations.Loading.Circles {
    struct MovingCircle: View {
        let index: Double
        
        @State private var yPosition: CGFloat = 0
        
        var body: some View {
            let animation: Animation = Animation
                .smooth()
                .repeatForever(autoreverses: true)
                .delay(TimeInterval(index * 0.1))
            
            Circle()
                .stroke(
                    Color.green,
                    style: StrokeStyle(lineWidth: 3)
                )
                .frame(width: 50 * CGFloat(index))
                .offset(y: yPosition)
                .onAppear {
                    withAnimation(animation) {
                        yPosition = 200
                    }
                }
        }
    }
}

#Preview {
    Animations.Loading.Circles.MovingCircle(index: 1)
}
