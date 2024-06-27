//
//  CardView.swift
//  swooped
//
//  Created by Krishnaswami Rajendren on 6/26/24.
//

import SwiftUI

struct CardView: View {
    @State private var xOffset: CGFloat = 0
    @State private var degrees: Double = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .top) {
                Image(.rosebyrne03)
                    .resizable()
                    .scaledToFill()
                
                SwipeActionView(xOffset: $xOffset)
                    .padding()
            }
            
            UserInfoView()
                .padding(.horizontal)
                .foregroundStyle(.white)
        }
        .frame(width: viewWidth, height: viewHeight)
        .clipShape(RoundedRectangle(cornerRadius: viewRadius))
        .shadow(color: shadowColor, radius: shadowRadius, x: shadowX, y: shadowY)
        .offset(x: xOffset)
        .rotationEffect(.degrees(degrees))
        .animation(.bouncy, value: degrees)
        .gesture(
            DragGesture()
                .onChanged({ value in
                    swipeChangeOffset(width: value.translation.width)
                })
                .onEnded({ value in
                    swipeEndOffset(width: value.translation.width)
                })
        )
    }
}

extension View {
    var bounds: CGRect {
        UIScreen.main.bounds
    }
    var screenWidth: CGFloat {
        bounds.width
    }
    
    var screenHeight: CGFloat {
        bounds.height
    }
    
    var viewWidth: CGFloat {
        screenWidth * 0.9
    }
    
    var viewHeight: CGFloat {
        screenHeight * 0.7
    }
    
    var viewRadius: CGFloat {
        screenWidth / 15
    }
    
    var shadowColor: Color {
        .black.opacity(0.6)
    }
    
    var shadowRadius: CGFloat {
        viewRadius / 10
    }
    
    var shadowX: CGFloat {
        screenWidth / 75
    }
    
    var shadowY: CGFloat {
        shadowX
    }
    
    var screenCutoff: CGFloat {
        screenWidth * 0.6
    }
}

private extension CardView {
    func swipeChangeOffset(width: CGFloat) {
        xOffset = width
        degrees = Double(width / 20)
    }
    
    func swipeEndOffset(width: CGFloat) {
        if abs(width) < abs(screenCutoff) {
            xOffset = 0
            degrees = 0
        }
    }
}

#Preview {
    CardView()
}
