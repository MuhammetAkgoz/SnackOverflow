//
//  MainView.swift
//  snackoverflow
//
//  Created by Muhammet Akgöz on 5.12.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ForEach(Destination.destinationList){ item in
                item.view.tabItem {
                    Image(systemName: item.tabItem.icon.rawValue)
                    Text(item.tabItem.label)
                }
            }
        }.accentColor(.peach)
    }
}

private struct Destination: Identifiable {
    let id = UUID()
    let view: AnyView
    let tabItem : TabItem

    static let destinationList: [Destination] = [
        Destination(view: AnyView(HomeView()), tabItem: TabItem(label: "Home", icon: .home)),
        Destination(view: AnyView(MarketView()), tabItem: TabItem(label: "Market", icon: .market)),
        Destination(view: AnyView(CreateView()), tabItem: TabItem(label: "Create", icon: .create)),
        Destination(view: AnyView(FavoriteView()), tabItem: TabItem(label: "Favorite", icon: .favorite)),
        Destination(view: AnyView(ProfileView()), tabItem: TabItem(label: "Profile", icon: .account))
    ]
}

private struct TabItem {
    let label: String
    let icon: Icons
}


#Preview {
    MainView()
}
