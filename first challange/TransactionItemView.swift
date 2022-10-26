//
//  TransactionItemView.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 25/10/22.
//

import SwiftUI

struct TransactionItemView: View {
    let action: DashboardListView.Ocean
    
    init(action: DashboardListView.Ocean) {
        self.action = action
    }
    
    var body: some View {
        HStack {
            CategoryImageView(model: action.category)
                .frame(width: 45, height: 45)
                .font(.title3)
            VStack(alignment: .leading) {
                Text(action.name)
                    .font(.system(size: 17.0, weight: .semibold))
                    .multilineTextAlignment(.leading)
                Text(action.name)
                    .font(.system(size: 15.0, weight: .regular))
                    .multilineTextAlignment(.leading)
            }
            Spacer()
            Text(String(action.money))
                .font(.system(size: 17.0, weight: .regular))
                .foregroundColor(Color(hex: .main_red_color))
        }
    }
}


struct TransactionItemView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionItemView(action: .init(name: "Hello baby", money: 100.0, category: CategoryImageModel(image: "bell", color: .main_red_color)))
    }
}
