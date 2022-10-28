//
//  DashbordView.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 26/10/22.
//

import SwiftUI

struct DashbordView: View {
    var body: some View {
        VStack {
            DashboardTopView()
            
            TransactionListView(title: "Latest Actions", transactions: [TransactionItem.example])
//                .frame(minHeight: universalHeight(height: 250.0))
            Spacer()
            DashboardCircleButton()
                .padding([.bottom], 40)
                .ignoresSafeArea()
        }
    }
}

struct DashbordView_Previews: PreviewProvider {
    static var previews: some View {
        DashbordView()
            .background(Color.white)
    }
}
