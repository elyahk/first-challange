//
//  EnterAmountView.swift
//  first challange
//
//  Created by Ciro Secondulfo on 26/10/22.
//

import SwiftUI

struct EnterAmountView: View {
    @State var shouldShowTitle: Bool
    @State var title: String
    @State var amount: String
    @FocusState private var keyboardFocused: Bool
    
    init(shouldShowTitle: Bool, title: String, amount: String) {
        self.shouldShowTitle = shouldShowTitle
        self.title = title
        self.amount = amount
    }
    
    var body: some View {
        VStack {
            if shouldShowTitle {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, -180.0)
            }
            
            HStack {
                Text("$")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width: 51, height: 78)
                Spacer()
                
                TextField("Enter something", text: $amount)
                    .background(Color.clear)
                    .multilineTextAlignment(.trailing)
                    .font(.system(size: 38.0, weight: .bold))
                    .padding([.trailing], 20)
                    .keyboardType(.decimalPad)
                    .focused($keyboardFocused)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                keyboardFocused = true
                            }
                        }
                    
            }
            .background(Color.white)
        }
        .background(Color.clear)
    }
}

struct EnterAmountView_Previews: PreviewProvider {
    static var previews: some View {
        EnterAmountView(shouldShowTitle: true, title: "Title", amount: "100.0")
    }
}
