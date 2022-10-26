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
                    .font(.system(size: 24))
                    .fontWeight(.medium)
                    .padding([.leading])
                Spacer()
                Text("200 $")
                    .font(.system(size: 24))
                    .fontWeight(.bold)
                    .foregroundColor(Color.red)
            }
            .padding([.leading, .trailing])
            .frame(height: universalHeight(height: 65))
        }
        .background {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color(hex: "FCFCFE"))
        }
    }
}

struct DashboardTopSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardTopSummaryView()
            
    }
}
