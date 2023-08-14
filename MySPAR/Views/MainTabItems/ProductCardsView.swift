//
//  ProductCardsView.swift
//  MySPAR
//
//  Created by Николай Ногин on 14.08.2023.
//

import SwiftUI

struct ProductCardsView: View {
    
    var products: [Product]
    
    var body: some View {
        ForEach(products, id: \.self) { product in
            VStack() {
                Image(uiImage: product.image)
                    .resizable()
                    .scaledToFit()
                    .padding([.leading, .trailing], 2)
                    .padding([.bottom, .top], 12)
                Spacer()
                HStack{
                    Text("\(String(format: "%.2f", product.price)) \(product.perKilo ? "р/кг" : "р/шт")")
                        .bold()
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(COLORS.SalesFontColor)
                    Spacer()
                    Button {
                        print("Place to Basket Button clicked!")
                    } label: {
                        ZStack {
                            Circle()
                                .fill(.green)
                                .frame(width: 40, height: 40)
                            Image(systemName: "basket").foregroundColor(.white)
                                
                        }
                    }
                    .padding(.trailing, 2)
                }.padding(10)
            }
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 6, x: 1, y: -1)
            .frame(minWidth: 160, maxWidth: 160, minHeight: 200, maxHeight: 200)
            .padding(5)

        }
    }
}

// For testing ..
fileprivate let db = DataBase()

struct ProductCardsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardsView(products: db.products)
    }
}
