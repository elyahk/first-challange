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

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Picker("",selection: $segmentedChoice){
                    Text ("Expences").tag(0)
                    Text ("Incomes").tag(1)
                }.padding([.top, .leading, .trailing]) .pickerStyle(SegmentedPickerStyle())
                
                EnterAmountView(shouldShowTitle: false, title: "", amount: "")
                    .padding([.top], 10)
                
                Text("Category")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .padding([.leading])
                    
//                CategoryListView(columnCount: 1, categories: [Categories().categories[0]])
                    
                Spacer()
            }
            .background(Color(hex: .gray_light))
            .navigationTitle("Expense")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        presentationMode.wrappedValue.dismiss()
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
}

struct TransactionMainView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionMainView()
    }
}
