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
            DashboardTopView2()
            
            DashboardListView()
            
            DashboardCircleButton()
        }
    }
}

struct DashbordView_Previews: PreviewProvider {
    static var previews: some View {
        DashbordView()
    }
}
