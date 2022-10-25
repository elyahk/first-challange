//
//  DashboardTopView.swift
//  first challange
//
//  Created by Yahya Momtaz on 25/10/22.
//

import SwiftUI

struct DashboardTopView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(red: 0.7490196078431373, green: 0.8627450980392157, blue: 0.6823529411764706))
                .frame(
                    width:UIScreen.main.bounds.width,
                    height:450
                )
                .position(x:197,y:99)
            
            Text("You are reaching your target")
                .position(x:197,y:50)
            
            Text("500 $")
                .fontWeight(.black)
                .position(x:197,y:100)
            
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .fill(.white)
                    .frame(width:270, height: 65)
                    .position(x:197,y:170)
                
                Text("Incomes")
                    .position(x:197,y:170)

                Text("200 $")
                    .position(x:280,y:170)
                Image("IncomeIcon")
                    .position(x:110,y:170)
                    
            }
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .fill(.white)
                    .frame(width:270, height: 65)
                    .position(x:197,y:250)
                Text("Expences")
                    .position(x:197,y:250)
                Text("200 $")
                    .position(x:280,y:250)
                Image("IncomeIcon")
                    .position(x:110,y:250)
            }

                
        }
    }
}

struct DashboardTopView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardTopView()
    }
}
