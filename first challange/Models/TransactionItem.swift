//
//  TransactionItem.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 28/10/22.
//

import Foundation

struct TransactionItem: Identifiable, Codable {
    let name: String
    let id = UUID()
    var money : Double
    let category: CategoryImageModel
    var isExpense: Bool = false
    var date: Date = Date()
 
    static var example: TransactionItem {
        TransactionItem(name: "Food", money: 12, category: CategoryImageModel(image: "bell", color: .main_red_color, name: "Shopping"))
    }
    
    func moneyHexColor() -> String {
        isExpense ? .main_red_color : .main_green_color
    }
}
