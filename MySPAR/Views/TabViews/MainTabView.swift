//
//  MainPageView.swift
//  MySPAR
//
//  Created by Николай Ногин on 14.08.2023.
//

import SwiftUI

struct MainTabView: View {
    
    let db = DataBase()
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                // - HStack for Search Bar And Menu Button -
                HStack {
                    // Main Tab Search
                    MainTabSearchView()
                    
                    // Menu Button
                    Button {
                        menuButtonClicked()
                    } label: {
                        Image("menu-png")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.green)
                    }
                }
                
                Divider()
                
                // - Scroll for Circle News
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top) {
                        ForEach(db.circleNews, id: \.self) { news in
                            VStack() {
                                Image(uiImage: news.image)
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .border(.black)
                                    .clipShape(Circle())
                                    .overlay (
                                        Circle().stroke(.green, lineWidth: 4)
                                    )
                                    .padding([.top], 12)
                                
                                Text(news.text)
                                    .multilineTextAlignment(.center)
                                    .fixedSize(horizontal: false, vertical: true)
                                Spacer()
                            }
                            .frame(minWidth: 120, maxWidth: 120, minHeight: 150, maxHeight: 150)
                            .padding(0)
                        }
                    }
                }
                // - Scroll for Rectangular News
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top) {
                        ForEach(db.sales, id: \.self) { sale in
                            Image(uiImage: UIImage(named: sale.imageName)!)
                                .resizable()
                                .frame(width: 310, height: 150)
                                .cornerRadius(20)
                        }
                    }
                }.padding([.top, .bottom], 10)
                
                // Bonuses and QR-code
                ZStack(alignment: .trailing) {
                    Image(uiImage: UIImage(named: "background")!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(20)
                    HStack {
                        HStack() {
                            Text("\(db.userBonuses)")
                                .font(.system(size: 40))
                                .bold()
                            Text("бонусов")
                                .bold()
                        }
                        .padding([.leading], 18)
                        .padding([.bottom], 40)
                        
                        Spacer()
                        
                        Image(uiImage: UIImage(named: "qr")!)
                            .resizable()
                            .frame(width: 80, height: 80)
                            .padding([.trailing], 18)
                    }
                }
                
                // - Squares with actions
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack() {
                        ActionsSquaresView(squareSales: db.squareSales)
                    }
                }.padding([.top, .bottom], 10)
                
                // - Recomendations section
                Text("Рекомендуем")
                    .bold()
                    .font(.system(size: 30))
                    .multilineTextAlignment(.leading)
                
                // Squares with products
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack() {
                        ProductCardsView(products: db.products)
                    }
                }.padding([.top, .bottom], 10)
                
                // - Sweet mood section
                Text("Сладкое настроение")
                    .bold()
                    .font(.system(size: 30))
                    .multilineTextAlignment(.leading)
                
                // Squares with products
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack() {
                        ProductCardsView(products: db.sweetMood)
                    }
                }.padding([.top, .bottom], 10)
                
            }
        }
        .padding()
    }
    
    private func menuButtonClicked() {
        print("Menu Button Clicked!")
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

