//
//  EnterAmountView.swift
//  first challange
//
//  Created by Ciro Secondulfo on 26/10/22.
//

import SwiftUI


struct EnterAmountView: View {
    var body: some View {
        VStack {
            Text("Enter your target")
                .font(.largeTitle)
            
            
            
            ZStack {
                Rectangle()
                    .fill(.white)
                    .frame(width: 392, height: 99)
                
                HStack {
                    Text("$")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: 51, height: 78)
                    Spacer()
                    
                    Text("10")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: 51, height: 78)
                    
                    
                }
            }
        }
        .padding()
    }
}

struct EnterAmountView_Previews: PreviewProvider {
    static var previews: some View {
        EnterAmountView()
    }
}
