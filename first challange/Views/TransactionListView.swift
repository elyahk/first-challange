//
//  DashboardListView.swift
//  first challange
//
//  Created by Ciro Secondulfo on 24/10/22.
//

import SwiftUI

struct TransactionListView: View {
    @State var title: String
    var transactions: [TransactionItem]
    
    var body: some View {
        VStack {
            List {
                Section(title) {
                    ForEach(transactions) { transaction in
                        TransactionItemView(transaction: transaction)
                    }
                }
                .foregroundColor(Color.black)
                .font(.system(size: 20.0, weight: .bold))
            }
            .listStyle(.plain)
            .onAppear {
                UITableView.appearance().backgroundColor = .white
            }
            .scrollDisabled(true)
        }
        .background(Color.white)
    }
}


struct DashboardListView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionListView(title: "Preview", transactions: [TransactionItem.example])
    }
}
