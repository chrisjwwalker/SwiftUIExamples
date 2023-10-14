//
//  Tile.swift
//  SwiftUIExamples
//
//  Created by Chris J W Walker on 14/10/2023.
//

import SwiftUI

extension ImageSelect.Components {
    struct Tile: View {
        var colour: Color
        
        @State private var isSelected: Bool = false
        
        @State private var frameSize: CGFloat = 100.00
        
        private func tileAction(_ colour: Color) {
            print("\(colour.description) tile selected")
        }
        
        var body: some View {
            ZStack(alignment: .bottomTrailing) {
                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                    .fill(colour.gradient)
                    .frame(width: frameSize, height: frameSize)
                    .accessibilityAddTraits(.isButton)
                    .onTapGesture {
                        isSelected = !isSelected
                        withAnimation {
                            frameSize = isSelected ? 75.00 : 100.00
                        }
        
                        if isSelected {
                            tileAction(colour)
                        }
                    }
            }
            .frame(width: 100, height: 100)
            .overlay(alignment: .bottomTrailing) {
                ZStack {
                    if isSelected {
                        Circle()
                            .foregroundStyle(.white)
                            .frame(width: 20, height: 20)
                        
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundStyle(.blue)
                    } else {
                        Image(systemName: "circle")
                            .foregroundStyle(.white)
                    }
                }
                .padding(.init(top: 0, leading: 0, bottom: 5, trailing: 5))
            }
        }
    }
}

#Preview {
    ImageSelect.Components.Tile(colour: .teal)
}

