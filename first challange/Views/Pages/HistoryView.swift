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
            }.padding() .pickerStyle(SegmentedPickerStyle())
                        
            TransactionListView(title: "History", transactions: manager.transactions)
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
            .environmentObject(TransactionManager())
    }
}
