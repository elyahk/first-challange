//
//  DashboardListView.swift
//  first challange
//
//  Created by Ciro Secondulfo on 24/10/22.
//

import SwiftUI

struct DashboardListView: View {
    struct Ocean: Identifiable {
        let name: String
        let id = UUID()
        var money : Double
        let category: CategoryImageModel
    }
    
    private var action = [
        Ocean(name: "Food", money: 12, category: CategoryImageModel(image: "bell", color: .main_red_color)),
        Ocean(name: "House", money: 13, category: CategoryImageModel(image: "house", color: .main_green_color)),
        Ocean(name: "Car", money: 14, category: CategoryImageModel(image: "plus", color: .dashboard_plus_button_main_color))
    ]
    
    var body: some View {
        NavigationView{
            VStack {
                List(action) { action in
                    TransactionItemView(action: action)
                    }
            }
            .navigationTitle("Latest Actions")
        }
    }
}


struct DashboardListView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardListView()
    }
}
