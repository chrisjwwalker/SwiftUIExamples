//
//  PullToRefreshView.swift
//  SwiftUIExamples
//
//  Created by Chris J W Walker on 13/10/2023.
//

import SwiftUI

func randomString(length: Int) -> String {
  let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  return String((0..<length).map{ _ in letters.randomElement()! })
}

extension PullToRefresh {
    struct SceneView: View {
        
        var data: [PullToRefresh.DataModel]
        
        @State var tiltAngle: Double = 0
        @State var padding: Double = 0
        @State var message: String = ""
        
        var body: some View {
            ScrollView {
                ForEach(Array(data.reversed().enumerated()), id: \.offset) { (idx, element) in
                    PullToRefresh.Components.TiltableCard(
                        id: message,
                        data: element,
                        tiltAngle: tiltAngle,
                        padding: padding,
                        zIndex: Double(idx)
                    )
                }
            }
            .background(.blue)
            .refreshable {
                await reload()
            }
        }
        
        func reload() async {
            tiltAngle = 23
            padding = -75
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
                message = randomString(length: 7)
                tiltAngle = 0
                padding = 0
            })
        }
    }

}

#Preview {
    PullToRefresh.SceneView(
        data: [
            .init(
                title: "SwiftUI",
                headline: "Something something",
                date: "2020-01-01"
            ),
            .init(
                title: "WDDC",
                headline: "It's happening",
                date: "2020-01-02"
            ),
            .init(
                title: "SwiftUI",
                headline: "Something something",
                date: "2020-01-01"
            ),
            .init(
                title: "iOS17",
                headline: "Something something",
                date: "2020-01-01"
            ),
            .init(
                title: "iPhone 15 Pro",
                headline: "Something something",
                date: "2020-01-01"
            ),
            .init(
                title: "M3 Macs",
                headline: "Something something",
                date: "2020-01-01"
            )
        ]
    )
}
