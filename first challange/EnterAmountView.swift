//
//  EnterAmountView.swift
//  first challange
//
//  Created by Ciro Secondulfo on 26/10/22.
//

import SwiftUI


struct EnterAmountView: View {
    var body: some View {
        ZStack {
            Text("Enter your target")
                .font(.largeTitle)
                .position(x:130,y: 289)
                
          
                Rectangle()
                    .fill(.gray)
                .frame(width: 392, height: 99)
            Text("$")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(width: 51, height: 78)
                .position(x:30,y:360)
            Text("10")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(width: 51, height: 78)
                .position(x:350, y:360)
            
                
        }
        .padding()
    }
}

struct EnterAmountView_Previews: PreviewProvider {
    static var previews: some View {
        EnterAmountView()
    }
}
