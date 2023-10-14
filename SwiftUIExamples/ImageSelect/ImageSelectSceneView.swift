//
//  SceneView.swift
//  SwiftUIExamples
//
//  Created by Chris J W Walker on 14/10/2023.
//

import SwiftUI

extension ImageSelect {
    struct SceneView: View {
        var body: some View {
            ScrollView {
                VStack {
                    HStack {
                        Spacer()
                        ImageSelect.Components.Tile(colour: .blue)
                        ImageSelect.Components.Tile(colour: .yellow)
                        ImageSelect.Components.Tile(colour: .teal)
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        Spacer()
                        ImageSelect.Components.Tile(colour: .red)
                        ImageSelect.Components.Tile(colour: .green)
                        ImageSelect.Components.Tile(colour: .purple)
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        Spacer()
                        ImageSelect.Components.Tile(colour: .white)
                        ImageSelect.Components.Tile(colour: .gray)
                        ImageSelect.Components.Tile(colour: .brown)
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        Spacer()
                        ImageSelect.Components.Tile(colour: .cyan)
                        ImageSelect.Components.Tile(colour: .indigo)
                        ImageSelect.Components.Tile(colour: .mint)
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        Spacer()
                        ImageSelect.Components.Tile(colour: .pink)
                        ImageSelect.Components.Tile(colour: .orange)
                        ImageSelect.Components.Tile(colour: .secondary)
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        Spacer()
                        ImageSelect.Components.Tile(colour: .blue)
                        ImageSelect.Components.Tile(colour: .yellow)
                        ImageSelect.Components.Tile(colour: .teal)
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        Spacer()
                        ImageSelect.Components.Tile(colour: .red)
                        ImageSelect.Components.Tile(colour: .green)
                        ImageSelect.Components.Tile(colour: .purple)
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        Spacer()
                        ImageSelect.Components.Tile(colour: .white)
                        ImageSelect.Components.Tile(colour: .gray)
                        ImageSelect.Components.Tile(colour: .brown)
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        Spacer()
                        ImageSelect.Components.Tile(colour: .cyan)
                        ImageSelect.Components.Tile(colour: .indigo)
                        ImageSelect.Components.Tile(colour: .mint)
                        Spacer()
                    }
                    .padding()
                    
                    HStack {
                        Spacer()
                        ImageSelect.Components.Tile(colour: .pink)
                        ImageSelect.Components.Tile(colour: .orange)
                        ImageSelect.Components.Tile(colour: .secondary)
                        Spacer()
                    }
                    .padding()
                }
            }
            .background(.black)
        }
    }

}

#Preview {
    ImageSelect.SceneView()
}
