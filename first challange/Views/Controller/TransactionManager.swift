//
//  File.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 01/11/22.
//

import Foundation

class TransactionManager: ObservableObject {
    @Published var transactions: [TransactionItem] = []
    
    func expenses() -> [TransactionItem] {
        transactions.filter { $0.isExpense }
    }
    
    func incomes() -> [TransactionItem] {
        transactions.filter { !$0.isExpense }
    }
}
