//
//  Categories.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 27/10/22.
//

import Foundation

class Categories {
    var categories = [
        CategoryImageModel(image: "cart.fill", color: "448AFF", name: "Shopping"),
        CategoryImageModel(image: "graduationcap.fill", color: "FF9800", name: "Education"),
        CategoryImageModel(image: "bus", color: "009688", name: "Transport"),
        CategoryImageModel(image: "fork.knife", color: "8BC34A", name: "Food"),
        CategoryImageModel(image: "tshirt.fill", color: "CD0766", name: "Clothes"),
        CategoryImageModel(image: "gamecontroller.fill", color: "1565C0", name: "Entertainment"),
        CategoryImageModel(image: "house.fill", color: "F44336", name: "Housing"),
        CategoryImageModel(image: "line.3.horizontal.circle.fill", color: "FFC107", name: "Other")
    ]
   
    var incomes = [
        CategoryImageModel(image: "dollarsign.square.fill", color: "448AFF", name: "Salary"),
        CategoryImageModel(image: "person.3.sequence.fill", color: "FF9800", name: "Parents"),
        CategoryImageModel(image: "gift.fill", color: "009688", name: "Bonus" ),
        CategoryImageModel(image: "line.3.horizontal.circle.fill", color: "FFC107", name: "Other")
    ]
    
    func makeDisableAll() {
        categories.enumerated().forEach {
            categories[$0.offset].isSelected = false
        }
    }
}
