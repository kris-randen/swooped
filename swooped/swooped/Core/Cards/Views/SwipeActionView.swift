//
//  SwipeActionView.swift
//  swooped
//
//  Created by Krishnaswami Rajendren on 6/27/24.
//

import SwiftUI

struct SwipeActionView: View {
    @Binding var xOffset: CGFloat
    
    var body: some View {
        HStack {
            Text("Swoop")
                .padding(12)
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.green)
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.green, lineWidth: 2)
                }
                .rotationEffect(.degrees(-45))
                .opacity(Double(xOffset / screenCutoff))
            
            Spacer()
            
            Text("Dump")
                .padding(12)
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .overlay {
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.red, lineWidth: 2)
                }
                .rotationEffect(.degrees(45))
                .opacity(Double(xOffset / screenCutoff) * -1)
        }
        .padding()
    }
}

#Preview {
    SwipeActionView(xOffset: .constant(250))
}
