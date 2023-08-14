//
//  DataBase.swift
//  MySPAR
//
//  Created by Николай Ногин on 14.08.2023.
//

import UIKit

class DataBase {
    
    let userBonuses = 119
    
    let circleNews: [CircleNews] = [
        CircleNews(
            image: UIImage(named: "CircleImages/1") ?? UIImage(named: "No-img")!,
            text: "Привилегии «Мой Спар»"
        ),
        CircleNews(
            image: UIImage(named: "CircleImages/2") ?? UIImage(named: "No-img")!,
            text: "Мы в соцсетях"
        ),
        CircleNews(
            image: UIImage(named: "CircleImages/3") ?? UIImage(named: "No-img")!,
            text: "3 рецепта коктелей"
        ),
        CircleNews(
            image: UIImage(named: "CircleImages/4") ?? UIImage(named: "No-img")!,
            text: "Дегустации в SPAR"
        ),
        CircleNews(
            image: UIImage(named: "CircleImages/5") ?? UIImage(named: "No-img")!,
            text: "Новинки недели"
        ),
    ]
    
    let sales: [Sale] = [
        Sale(imageName: "Sales/1"),
        Sale(imageName: "Sales/2"),
        Sale(imageName: "Sales/3"),
    ]
    
    let squareSales: [SquareSales] = [
        SquareSales(
            image: UIImage(named: "SquareSales/1") ?? UIImage(named: "No-img")!,
            text: "Мои скидки"
        ),
        SquareSales(
            image: UIImage(named: "SquareSales/2") ?? UIImage(named: "No-img")!,
            text: "Абонемент на кофе"
        ),
        SquareSales(
            image: UIImage(named: "SquareSales/3") ?? UIImage(named: "No-img")!,
            text: "Карта в подарок"
        ),
        SquareSales(
            image: UIImage(named: "SquareSales/4") ?? UIImage(named: "No-img")!,
            text: "Доставка за 1 час"
        ),
        
    ]
    
    let products: [Product] = [
        Product(
            image: UIImage(named: "Products/1") ?? UIImage(named: "No-img")!,
            price: 259.90,
            perKilo: false
        ),
        Product(
            image: UIImage(named: "Products/2") ?? UIImage(named: "No-img")!,
            price: 99.90,
            perKilo: false
        ),
        Product(
            image: UIImage(named: "Products/3") ?? UIImage(named: "No-img")!,
            price: 309.90,
            perKilo: false
        ),
        Product(
            image: UIImage(named: "Products/4") ?? UIImage(named: "No-img")!,
            price: 259.90,
            perKilo: true
        ),
    
    ]
    
    let sweetMood: [Product] = [
        Product(
            image: UIImage(named: "SweetMood/1") ?? UIImage(named: "No-img")!,
            price: 99.90,
            perKilo: false
        ),
        Product(
            image: UIImage(named: "SweetMood/2") ?? UIImage(named: "No-img")!,
            price: 99.90,
            perKilo: false
        ),
        Product(
            image: UIImage(named: "SweetMood/3") ?? UIImage(named: "No-img")!,
            price: 99.90,
            perKilo: false
        ),
    ]
    
    
}
