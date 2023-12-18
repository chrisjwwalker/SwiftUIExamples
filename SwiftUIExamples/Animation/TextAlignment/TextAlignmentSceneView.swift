//
//  TextAlignmentSceneView.swift
//  SwiftUIExamples
//
//  Created by Chris J W Walker on 15/10/2023.
//

import SwiftUI

struct TextAlignmentSceneView: View {
    
    @State private var alignment = false
    
    var body: some View {
        VStack {
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Porta nibh venenatis cras sed felis eget velit aliquet. Tempus quam pellentesque nec nam aliquam sem et.")
                .font(.title2)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

#Preview {
    TextAlignmentSceneView()
}
