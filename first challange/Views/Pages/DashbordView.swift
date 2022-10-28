//
//  DashbordView.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 26/10/22.
//

import SwiftUI

struct DashbordView: View {
    @State var transactions: [TransactionItem] = []
    
    var body: some View {
        VStack {
            DashboardTopView()
            
            TransactionListView(title: "Latest Actions", transactions: transactions)
//                .frame(minHeight: universalHeight(height: 250.0))
            Spacer()
            makeCircleButton()
                .padding([.bottom], 40)
                .ignoresSafeArea()
            
        }
    }
    
    func makeCircleButton() -> DashboardCircleButton {
        var view = DashboardCircleButton()
        view.save = { item in
            transactions.append(item)
        }
        
        return view
    }
}

struct DashbordView_Previews: PreviewProvider {
    static var previews: some View {
        DashbordView()
            .background(Color.white)
    }
}
