//
//  DashboardTopSummaryView.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 26/10/22.
//

import SwiftUI

struct DashboardTopSummaryView: View {
    var body: some View {
        VStack{
            HStack {
                Image("IncomeIcon")
                
                Text("Incomes")
                    .padding()
                Spacer()
                Text("200 $")
            }
            .padding()
        }
        .background {
            Rectangle()
                .fill(Color.white)
        }
    }
}

struct DashboardTopSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardTopSummaryView()
            .background(Color.green)
    }
}
