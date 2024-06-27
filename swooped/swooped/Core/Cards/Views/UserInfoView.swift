//
//  UserInfoView.swift
//  swooped
//
//  Created by Krishnaswami Rajendren on 6/27/24.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Rose Byrne")
                    .font(.title)
                    .fontWeight(.heavy)
                
                Text("43")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("DEBUG: Show profile here...")
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
            }
            
            Text("Actress | Australian Doll")
                .font(.headline)
                .fontWeight(.regular)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom))
    }
}

#Preview {
    UserInfoView()
}
