//
//  HexagonsLoadingSceneView.swift
//  SwiftUIExamples
//
//  Created by Chris J W Walker on 17/12/2023.
//

import SwiftUI

extension Animations.Loading.Circles {
    struct SceneView: View {
        
        @State var yPosition: CGFloat = 0
        
        var body: some View {
            ScrollView {
                ZStack {
                    ForEach(Array((1...5).enumerated()), id: \.offset) { (_, num) in
                        Animations.Loading.Circles.MovingCircle(
                            index: Double(num)
                        )
                    }
                }
            }
            .background(Color.black)
        }
    }
}

#Preview {
    Animations.Loading.Circles.SceneView()
}
