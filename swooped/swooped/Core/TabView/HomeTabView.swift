//
//  HomeTabView.swift
//  swooped
//
//  Created by Krishnaswami Rajendren on 6/26/24.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        TabView {
            Text("Swiping")
                .tabItem { Image(systemName: "flame") }
                .tag(0)
            Text("Search")
                .tabItem { Image(systemName: "magnifyingglass") }
                .tag(1)
            Text("Inbox")
                .tabItem { Image(systemName: "message.circle") }
                .tag(2)
            Text("Profile")
                .tabItem { Image(systemName: "person.crop.circle") }
                .tag(3)
        }
        .tint(.primary)
    }
}

#Preview {
    HomeTabView()
}
