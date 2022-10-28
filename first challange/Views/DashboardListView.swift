//
//  DashboardListView.swift
//  first challange
//
//  Created by Ciro Secondulfo on 24/10/22.
//

import SwiftUI

struct TransactionItem: Identifiable {
    let name: String
    let id = UUID()
    var money : Double
    let category: CategoryImageModel
    
    static var example: TransactionItem {
        TransactionItem(name: "Food", money: 12, category: CategoryImageModel(image: "bell", color: .main_red_color))
    }
}

struct DashboardListView: View {
    var actions: [TransactionItem]
    
    var body: some View {
        VStack {
            List {
                Section("Latest Action") {
                    ForEach(actions) { action in
                        TransactionItemView(transaction: action)
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
        DashboardListView(actions: [TransactionItem.example])
    }
}
