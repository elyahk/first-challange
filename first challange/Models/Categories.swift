//
//  Categories.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 27/10/22.
//

import Foundation

class Categories {
    var categories: [CategoryImageModel] = [
        CategoryImageModel(image: .education, color: .main_purple),
        CategoryImageModel(image: .clothes, color: .main_red_color),
        CategoryImageModel(image: .entertainment, color: .main_red_color),
        CategoryImageModel(image: "house", color: .main_red_color),
        CategoryImageModel(image: "bell", color: .main_green_color),
        CategoryImageModel(image: "bell", color: .main_green_color),
        CategoryImageModel(image: "bell", color: .main_green_color),
        CategoryImageModel(image: "bell", color: .main_green_color)

    ]
 
    func makeDisableAll() {
        categories.enumerated().forEach {
            categories[$0.offset].isSelected = false
        }
    }
}
