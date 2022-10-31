//
//  DashboardTopView.swift
//  first challange
//
//  Created by Yahya Momtaz on 25/10/22.
//

import SwiftUI

struct DashboardTopView: View {
    var body: some View {
        VStack {
            VStack {
                Text("You are reaching your target")
                    .font(.system(size: 24))
                    .fontWeight(.light)
                    .padding([.top], universalHeight(height: 20))
                NavigationLink(destination: TargetView()) {
                    Text("500 $")
                        .foregroundColor(Color.black)
                        .padding([.leading, .trailing], universalHeight(height: 20))
                        .padding([.top, .bottom], universalHeight(height: 10))
                        .font(.system(size: 24))
                        .fontWeight(.black)
                        .background {
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .fill(Color(hex: "FCFCFE"))
                                .frame(width: 150, height: 45)
                        }
                }
                
                DashboardTopSummaryView()
                    .padding([.leading, .trailing])
                    .padding([.leading, .trailing], 20)
                
                DashboardTopSummaryView()
                    .padding([.leading, .trailing, .bottom])
                    .padding([.leading, .trailing], 20)
            }
            .frame(maxWidth: .infinity)
            .background {
                Rectangle()
                    .fill(Color(hex: "BFDCAE"))
            }
        }
    }
}

struct DashboardTopView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DashboardTopView()
                .previewDevice("iPhone 14 Plus")
        }
    }
}
