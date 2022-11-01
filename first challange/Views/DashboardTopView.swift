//
//  DashboardTopView.swift
//  first challange
//
//  Created by Yahya Momtaz on 25/10/22.
//

import SwiftUI

struct DashboardTopView: View {
    @EnvironmentObject var manager: TransactionManager

    var body: some View {
        VStack {
            VStack {
                Text("You are reaching your target")
                    .font(.system(size: 24))
                    .fontWeight(.regular)
                    .padding([.top], universalHeight(height: 20))
                NavigationLink(destination: TargetView()) {
                    Text("500 $")
                        .foregroundColor(Color.black)
                        .padding([.leading, .trailing], universalHeight(height: 20))
                        .padding([.bottom], universalHeight(height: 10))
                        .font(.system(size: 36))
                        .fontWeight(.black)
                }
                
                HStack {
                    DashboardTopSummaryView(
                        title: "Expenses",
                        value: "\(manager.expenseAmount)",
                        model: CategoryImageModel(image: .expenseImage, color: .main_red_color, name: "Expenses"),
                        isIncome: false
                    )
                    .padding([.bottom])
                    
                    DashboardTopSummaryView(
                        title: "Incomes",
                        value: "\(manager.incomeAmount)",
                        model: CategoryImageModel(image: .incomeImage, color: .main_green_color, name: "Income"),
                        isIncome: true
                    )
                    .padding([.bottom])
                }
            }
            .frame(maxWidth: .infinity)
            .background {
                Rectangle()
                    .fill(Color(UIColor.systemGroupedBackground))
            }
        }
    }
}

struct DashboardTopView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DashboardTopView()
                .previewDevice("iPhone 14 Plus")
                .environmentObject(TransactionManager())
        }
    }
}
