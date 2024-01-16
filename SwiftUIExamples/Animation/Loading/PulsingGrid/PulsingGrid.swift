//
//  PulsingGrid.swift
//  SwiftUIExamples
//
//  Created by Chris J W Walker on 14/01/2024.
//

import SwiftUI

struct PulsingGridView: View {
    let rows = 4
    let columns = 4
    
    var body: some View {
        VStack(spacing: 10) {
            ForEach(0..<rows, id: \.self) { row in
                HStack(spacing: 10) {
                    ForEach(0..<self.columns, id: \.self) { column in
                        PulsingSquare()
                    }
                }
            }
        }
        .padding()
    }
}

struct PulsingSquare: View {
    @State private var isPulsing = false
    
    var body: some View {
        Rectangle()
            .fill(Color.blue)
            .frame(width: 50, height: 50)
            .scaleEffect(isPulsing ? 1.2 : 1.0)
            .animation(
                Animation.easeInOut(duration: 1)
                    .repeatForever(autoreverses: true)
            )
            .onAppear() {
                self.isPulsing.toggle()
            }
    }
}

#Preview {
    PulsingGridView()
}
