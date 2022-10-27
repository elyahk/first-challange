//
//  TransactionMainView.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 27/10/22.
//

import SwiftUI

struct TransactionMainView: View {
    var body: some View {
            NavigationStack {
                List {
                    Text("Hello, SwiftUI!")
                }
                .navigationTitle("Navigation Title")
                .toolbar {
                    Button("Add") {}
                }
                .toolbarColorScheme(.dark, for: .navigationBar)

                .toolbarBackground(
                    Color.pink,
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
