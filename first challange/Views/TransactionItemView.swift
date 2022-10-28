//
//  TransactionItemView.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 25/10/22.
//

import SwiftUI

struct TransactionItemView: View {
    let transaction: TransactionItem
    
    init(transaction: TransactionItem) {
        self.transaction = transaction
    }
    
    var body: some View {
        HStack {
            CategoryImageView(model: transaction.category)
                .frame(width: universalWidth(width: 45.0), height: universalWidth(width: 45.0))
                .font(.title3)
            
            VStack(alignment: .leading) {
                Text(transaction.name)
                    .font(.system(size: 17.0, weight: .semibold))
                    .multilineTextAlignment(.leading)
                Text(transaction.name)
                    .font(.system(size: 15.0, weight: .regular))
                    .multilineTextAlignment(.leading)
            }
            Spacer()
            Text(String(transaction.money))
                .font(.system(size: 17.0, weight: .regular))
                .foregroundColor(Color(hex: .main_red_color))
        }
    }
}


struct TransactionItemView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionItemView(transaction: .init(name: "Hello baby", money: 100.0, category: CategoryImageModel(image: "bell", color: .main_red_color, name: "Shopping")))
    }
}
