//
//  TabbarView.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 26/10/22.
//

import SwiftUI

struct TabbarView: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.systemGray6
    }
    
    var body: some View {
        TabView {
            DashbordView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            
            HistoryView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
        }
        .accentColor(Color.green)
        
    }
}

struct TabbarView_Previews: PreviewProvider {
    static var previews: some View {
       Group {
            TabbarView()
            TabbarView()
            TabbarView()
       }
       .previewDevice("iPhone SE (3rd generation)")
    }
}
