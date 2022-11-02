//
//  TargetView.swift
//  first challange
//
//  Created by Yahya Momtaz on 28/10/22.
//

import SwiftUI

struct TargetView: View {
    @FocusState  var goalIsFocused: Bool
    
    var body: some View {
        VStack {
            Text("How much do you want to spend in a month?")
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.center)
                .font(.system(size: 30))
                .lineSpacing(0.1)
            
            VStack {
                TextField("Enter your goal!", text: .constant(""))
                    .frame(height: 100)
                    .keyboardType(.numberPad)
                    .font(.system(size: 32.0, weight: .bold))
                    .focused($goalIsFocused)
                
            }
            .padding([.leading, .trailing], universalHeight(height: 20))
            .background(Color.white)
            Spacer()
        }
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Button("Done") {
                    goalIsFocused = false
                }
            }
        }
        Spacer()
    }
}

struct TargetView_Previews: PreviewProvider {
    static var previews: some View {
        TargetView()
    }
}
