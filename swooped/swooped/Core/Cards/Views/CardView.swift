//
//  CardView.swift
//  swooped
//
//  Created by Krishnaswami Rajendren on 6/26/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(.rosebyrne03)
                .resizable()
                .scaledToFill()
            
            UserInfoView()
                .padding(.horizontal)
                .foregroundStyle(.white)
        }
        .frame(width: width, height: height)
        .clipShape(RoundedRectangle(cornerRadius: radius))
    }
}

private extension CardView {
    var bounds: CGRect {
        UIScreen.main.bounds
    }
    var width: CGFloat {
        bounds.width * 0.9
    }
    
    var height: CGFloat {
        bounds.height * 0.7
    }
    
    var radius: CGFloat {
        bounds.width / 15
    }
}

#Preview {
    CardView()
}
