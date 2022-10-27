//
//  DashboardTopView.swift
//  first challange
//
//  Created by Yahya Momtaz on 25/10/22.
//

import SwiftUI

let screenWidth = UIScreen.main.bounds.width
let scrennHeight = UIScreen.main.bounds.height

func universalHeight(height: CGFloat) -> CGFloat {
    scrennHeight / 844.0 * height
}

func universalWidth(width: CGFloat) -> CGFloat {
    screenWidth / 390.0 * width
}

struct DashboardTopView2: View {
    var body: some View {
        VStack {
            VStack {
                Text("You are reaching your target")
                    .font(.system(size: 24))
                    .fontWeight(.light)
                    .padding([.top], universalHeight(height: 20))
                Text("500 $")
                    .padding([.leading, .trailing], universalHeight(height: 20))
                    .padding([.top, .bottom], universalHeight(height: 10))
                    .font(.system(size: 24))
                    .fontWeight(.black)
                    .background {
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .fill(Color(hex: "FCFCFE"))
                            .frame(width: 150, height: 45)
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



struct DashboardTopView: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(red: 0.7490196078431373, green: 0.8627450980392157, blue: 0.6823529411764706))
                    .frame(
                        width: screenWidth,
                        height: universalHeight(height: 450)
                    )
                    .offset(y: -universalHeight(height: 100))
                
                VStack {
                    VStack {
                        Text("You are reaching your target")
                            .font(.system(size: 25, weight: .light))
                        Text("500 $")
                            .font(.system(size: 25, weight: .light))
                            .fontWeight(.black)
                    }
                    .padding(.top, 40)
                    DashboardTopSummaryView()
                        .frame(height: 60)
                        .padding(.top, 20)
                        .padding(.leading, 50)
                        .padding(.trailing, 50)
                    
                    DashboardTopSummaryView()
                        .padding(.top, 40)
                        .frame(height: 60)
                        .padding(.leading, 50)
                        .padding(.trailing, 50)
                    
                    Spacer()
                }
            }
            Spacer()
            
            
            
        }
        
    }
}

struct DashboardTopView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DashboardTopView2()
                .previewDevice("iPhone 14 Plus")
        }
    }
}
