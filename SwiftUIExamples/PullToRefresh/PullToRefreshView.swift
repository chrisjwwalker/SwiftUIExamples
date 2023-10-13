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

struct PullToRefreshView: View {
    
    @State var tiltAngle: Double = 0
    @State var padding: Double = 0
    @State var message: String = ""
    
    var body: some View {
        ScrollView {
            ForEach(Range(1...10).reversed(), id: \.description) { x in
                TiltableCard(
                    message: message,
                    tiltAngle: tiltAngle,
                    padding: padding,
                    zIndex: Double(x)
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

#Preview {
    PullToRefreshView()
}
