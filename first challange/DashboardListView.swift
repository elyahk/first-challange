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
        
        
      
    }

    private var action = [
        Ocean(name: "Food", money: 12),
        Ocean(name: "House", money: 13 ),
        Ocean(name: "Car", money: 14),
        
    ]

    var body: some View {
        NavigationView{
            VStack {
                List(action) { action in
                        HStack {
                            Image(systemName: "house")
                                .font(.system(size: 25.0))
                            VStack(alignment: .leading) {
                                Text(action.name)
                                    .font(.system(size: 17.0, weight: .semibold))
                                    .multilineTextAlignment(.leading)
                                Text(action.name)
                                    .font(.system(size: 15.0, weight: .regular))
                                    .multilineTextAlignment(.leading)
                            }
                            .padding(.init(top: 0.0, leading: 10.0, bottom: 0.0, trailing: 5.0))
                            Spacer()
                            Text(String(action.money))
                                .font(.system(size: 17.0, weight: .regular))
                                .foregroundColor(Color(hex: .main_red_color))
                        }
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
