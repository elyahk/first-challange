//
//  DashboardTopSummaryView.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 26/10/22.
//

import SwiftUI

struct DashboardTopSummaryView: View {
    @State var title: String = "Incomes"
    @State var value: String = "200"
    @State var color: Color = .green
    @State var model = CategoryImageModel(image: .incomeImage, color: .main_green_color, name: "")
    @State var isIncome: Bool = true
    @EnvironmentObject var manager: TransactionManager
    
    var body: some View {
        VStack{
            HStack(alignment: .center) {
                Text(title)
                    .font(.system(size: 22))
                    .fontWeight(.semibold)
                
                getImageView()
                    .frame(width: 45.0, height: 45.0)
//                    .padding([.leading])
            }
            
            if isIncome {
                Text("\(manager.incomeAmount, specifier: "%.1f") $")
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                    .lineLimit(1)
                    .foregroundColor(Color(hex: model.color))
            } else {
                Text("\(manager.expenseAmount, specifier: "%.1f") $")
                    .font(.system(size: 28))
                    .fontWeight(.bold)
                    .lineLimit(1)
                    .foregroundColor(Color(hex: model.color))
            }
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color(hex: "FCFCFE"))
        }
    }
    
    func getImageView() -> CategoryImageView {
        let imageView = CategoryImageView(model: model)
        imageView.fontSize = 22.0
        return imageView
    }
}

struct DashboardTopSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardTopSummaryView()
            .environmentObject(TransactionManager())
            
    }
}
