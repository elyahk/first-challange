//
//  TransactionMainView.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 27/10/22.
//

import SwiftUI

struct TransactionMainView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var segmentedChoice = 0
    @State var money: String = ""
    
    var save: ((TransactionItem) -> Void)? = nil
    
    func getCategoryList() -> CategoryListView {
        var categoryList = CategoryListView(isExpense: $segmentedChoice)
        categoryList.selected = { category in
            let transaction = TransactionItem(name: category.name, money: Double(money)!, category: category, isExpense: segmentedChoice == 0)
            save?(transaction)
            dismissView()
        }
        
        return categoryList
    }

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Picker("",selection: $segmentedChoice){
                    Text ("Expences").tag(0)
                    Text ("Incomes").tag(1)
                }
                .onChange(of: segmentedChoice) { _ in
                    
                }
                .padding([.top, .leading, .trailing])
                .pickerStyle(SegmentedPickerStyle())
                
                let amountView = EnterAmountView(shouldShowTitle: false, title: "", amount: $money)
                    .padding([.top], 10)
                amountView
//                emount
                
                Text("Category")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .padding([.leading])
                    
                getCategoryList()
                    
                Spacer()
            }
            .background(Color(hex: .gray_light))
            .navigationTitle("Expense")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        dismissView()
                    }
                    .foregroundColor(Color.red)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Save") {
                        presentationMode.wrappedValue.dismiss()
                    }
                    .foregroundColor(Color.blue)
                }
            }
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
    
    func dismissView() {
        presentationMode.wrappedValue.dismiss()
    }
}

struct TransactionMainView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionMainView()
    }
}
