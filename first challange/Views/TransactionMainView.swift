//
//  TransactionMainView.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 27/10/22.
//

import SwiftUI

struct TransactionMainView: View {
    @State var segmentedChoice = 0

    var body: some View {
        NavigationStack {
            VStack {
                Picker("",selection: $segmentedChoice){
                    Text ("All").tag(0)
                    Text ("Expences").tag(1)
                    Text ("Incomes").tag(2)
                }.padding() .pickerStyle(SegmentedPickerStyle())
                
                EnterAmountView(shouldShowTitle: false, title: "", amount: "200.0")
                    .padding([.top], 10)
                
                CategoryListView()
                Spacer()
            }
            .background(Color.white)
            .navigationTitle("Expense")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        print("Pressed")
                    }
                    .foregroundColor(Color.red)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        print("Pressed")
                    }
                    .foregroundColor(Color.blue)
                }
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
            .toolbarBackground(
                Color.gray,
                for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct TransactionMainView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionMainView()
    }
}
