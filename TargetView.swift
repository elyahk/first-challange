//
//  TargetView.swift
//  first challange
//
//  Created by Yahya Momtaz on 28/10/22.
//

import SwiftUI

struct TargetView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var segmentedChoice = 0
    var body: some View {
        
//        enter amount view
//          ttile
//        navigation bar
//        transaction main view
        NavigationStack {
            VStack(alignment: .leading) {
                EnterAmountView(shouldShowTitle: false, title: "", amount: "")
                    .padding([.top], 10)
                    
                Spacer()
            }
            .background(Color(hex: .gray_light))
            .navigationTitle("Enter your Target")
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

struct TargetView_Previews: PreviewProvider {
    static var previews: some View {
        TargetView()
    }
}
