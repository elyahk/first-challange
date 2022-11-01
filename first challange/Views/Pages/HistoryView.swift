//
//  HistoryView.swift
//  first challange
//
//  Created by Yahya Momtaz on 26/10/22.
//

import SwiftUI

struct HistoryView: View {
    @State var segmentedChoice = 0
    @EnvironmentObject var manager: TransactionManager

    var body: some View {
        VStack{
            Picker("", selection: $segmentedChoice){
                Text ("All").tag(0)
                Text ("Expences").tag(1)
                Text ("Incomes").tag(2)
            }
            .padding()
            .pickerStyle(.segmented)
                        
            if segmentedChoice == 0 {
                TransactionListView(title: "History", transactions: manager.transactions)
            } else if segmentedChoice == 1 {
                TransactionListView(title: "Expenses", transactions: manager.expenses())
            } else {
                TransactionListView(title: "Incomes", transactions: manager.incomes())
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
            .environmentObject(TransactionManager())
    }
}
