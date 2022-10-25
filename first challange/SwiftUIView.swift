//
//  SwiftUIView.swift
//  first challange
//
//  Created by Gennaro Caccavallo on 25/10/22.
//

import SwiftUI
struct ContentView2: View {
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(Color(hex: ))
                .frame(width: 45, height: 45)
            Image(systemName: "house.fill")
                .foregroundColor(.white)

            
        }
    }
}
struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
