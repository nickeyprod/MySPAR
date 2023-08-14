//
//  MainView.swift
//  MySPAR
//
//  Created by Николай Ногин on 14.08.2023.
//

import SwiftUI

struct MainScreenView: View {
    var body: some View {
        TabView() {
            
            // Main Tab
            MainTabView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Главная")
                }.tag(1)
            
            // Catalog Tab
            CatalogTabView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Каталог")
                }.tag(2)
            
            // Basket Tab
            BasketTabView()
                .tabItem {
                    Image(systemName: "basket")
                    Text("Корзина")
                }.tag(3)
            
            // Profile Tab
            ProfileTabView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Профиль")
                    }
                }.tag(4)
        }.accentColor(COLORS.SPARColor)
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
