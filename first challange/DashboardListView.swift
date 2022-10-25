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
                            Text(action.name)
                            Spacer()
                            Text(String(action.money))
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
