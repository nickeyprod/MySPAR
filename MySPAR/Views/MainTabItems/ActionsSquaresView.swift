//
//  ActionsSquaresView.swift
//  MySPAR
//
//  Created by Николай Ногин on 15.08.2023.
//

import SwiftUI

struct ActionsSquaresView: View {
    
    var squareSales: [SquareSales]
    
    var body: some View {
        ForEach(squareSales, id: \.self) { sale in
            HStack(alignment: .top) {
                ZStack(alignment: .topLeading) {
                    Image(uiImage: sale.image)
                        .resizable()
                        .frame(width: 120, height: 130)
                        .cornerRadius(20)
                        .padding([.leading, .trailing], 2)
                    Text(sale.text)
                        .bold()
                        .fixedSize(horizontal: false, vertical: true)
                        .foregroundColor(COLORS.SalesFontColor)
                        .padding(.top, 10)
                        .padding([.leading], 14)
                }
            }
            .frame(width: 120, height: 130)
        }
    }
}

// For testing ..
fileprivate let db = DataBase()

struct ActionsSquaresView_Previews: PreviewProvider {
    static var previews: some View {
        ActionsSquaresView(squareSales: db.squareSales)
    }
}
