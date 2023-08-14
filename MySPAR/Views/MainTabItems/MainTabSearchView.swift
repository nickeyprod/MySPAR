//
//  SearchFiled.swift
//  MySPAR
//
//  Created by Николай Ногин on 14.08.2023.
//

import SwiftUI

struct MainTabSearchView: View {
    
    @State private var searchField: String = ""
    
    var body: some View {
        ZStack(alignment: .leading) {
            if searchField.isEmpty {
                Image(systemName: "mappin")
                    .foregroundColor(.red)
                    .padding(.leading, 8)
                Text("Москва, Москва и Московская область")
                    .lineLimit(1)
                    .foregroundColor(.black)
                    .padding([.leading], 30)
                    .padding([.top, .bottom, .trailing], 10)
                    .font(.system(size: 18))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(COLORS.SearchBarBorderColor, lineWidth: 2)
                    )
            }
            TextField("", text: $searchField)
                .font(.system(size: 50))
        }
    }
}

struct MainTabSearchView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabSearchView()
    }
}

