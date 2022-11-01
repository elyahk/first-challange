//
//  File.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 01/11/22.
//

import Foundation

class TransactionManager: ObservableObject {
    @Published var transactions: [TransactionItem] = []
}
