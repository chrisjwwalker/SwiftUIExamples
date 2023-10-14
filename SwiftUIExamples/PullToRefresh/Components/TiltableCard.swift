//
//  TiltableCard.swift
//  SwiftUIExamples
//
//  Created by Chris J W Walker on 13/10/2023.
//

import SwiftUI

extension PullToRefresh.Components {
    struct TiltableCard: View {
        
        var id: String
        var data: PullToRefresh.DataModel
        
        var tiltAngle: Double
        var padding: Double
        var zIndex: Double

        @State private var angle: Double = 0
        @State private var bottomPadding: Double = 0
        
        var body: some View {
            HStack {
                Spacer()
                VStack {
                    Spacer()
                    Text(data.title)
                        .bold()
                    Text(data.headline)
                    Text(data.date)
                    Text(id)
                    Spacer()
                }
                Spacer()
            }
            .background(.white)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
            .frame(height: 200)
            .padding(.init(top: 0, leading: 50, bottom: 0, trailing: 50))
            .rotation3DEffect(.degrees(angle), axis: (x: 1.0, y: 0.0, z: 0.0))
            .padding(.init(top: 0, leading: 0, bottom: bottomPadding, trailing: 0))
            .zIndex(zIndex)
            .onChange(of: tiltAngle, {
                withAnimation {
                    angle = tiltAngle
                    bottomPadding = padding
                }
            })
        }
    }

}

#Preview {
    PullToRefresh.Components.TiltableCard(
        id: "qwerty",
        data: .init(title: "ABC", headline: "XYZ", date: "2020-01-01"),
        tiltAngle: 23,
        padding: -75,
        zIndex: 1.0
    )
}
