//
//  Adding.swift
//  first challange
//
//  Created by Yahya Momtaz on 26/10/22.
//

import SwiftUI

struct Adding: View {
    var body: some View {
        ZStack{
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(red: 0.647, green: 0.098, blue: 0.361))
                    .frame(
                        width:72,
                        height:72
                    )
                    .position(x:80,y:350)
                Image("suitcase")
                    .position(x:80,y:350)
            }
           
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(red: 0.5019607843137255, green: 0.6980392156862745, blue: 0.07450980392156863))
                    .frame(
                        width:72,
                        height:72
                    )
                    .position(x:160,y:350)
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(red: 0.803921568627451, green: 0.027450980392156862, blue: 0.4))
                    .frame(
                        width:72,
                        height:72
                    )
                    .position(x:240,y:350)
                
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(red: 0.19215686274509805, green: 0.09019607843137255, blue: 0.611764705882353))
                    .frame(
                        width:72,
                        height:72
                    )
                    .position(x:320,y:350)
            }
        }
    }
    
    
    
    
}

struct Adding_Previews: PreviewProvider {
    static var previews: some View {
        Adding()
    }
}
