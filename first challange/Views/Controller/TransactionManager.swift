//
//  File.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 01/11/22.
//

import Foundation

class TransactionManager: ObservableObject {
    @Published var transactions: [TransactionItem] = []
    @Published var incomeAmount: Double = 0.0
    @Published var expenseAmount: Double = 0.0
    
    func expenses() -> [TransactionItem] {
        transactions.filter { $0.isExpense }
    }
    
    func incomes() -> [TransactionItem] {
        transactions.filter { !$0.isExpense }
    }
    
    func calculateExpenseAmount() -> Double {
        expenses().reduce(0) { partialResult, item in
            partialResult + item.money
        }
    }
    
    func calculateIncomeAmount() -> Double {
        incomes().reduce(0) { partialResult, item in
            partialResult + item.money
        }
    }
    
    func addTransaction(_ transaction: TransactionItem) {
        transactions.insert(transaction, at: 0)
        incomeAmount = calculateIncomeAmount()
        expenseAmount = calculateExpenseAmount()
    }
}
