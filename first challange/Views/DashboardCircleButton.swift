//
//  DashboardCircleButton.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 24/10/22.
//

import SwiftUI

extension Color {
 init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

struct DashboardCircleButton: View {
    @State var circleTapped = false
    @State var circlePressed = false
    @State private var showingSheet = false

    var save: ((TransactionItem) -> Void)? = nil
    
    var body: some View {
        VStack {
            Image(systemName: "plus")
                .foregroundColor(Color(hex: .white_color))
                .font(.system(size: 40, weight: .light))
        }
        .frame(width: 60, height: 60)
        .background(
            ZStack {
                Circle()
                    .fill(Color(hex: .dashboard_plus_button_main_color))
                    .frame(width: 80, height: 80)//Button Size.
                    .shadow(color: Color("LightShadow"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color("DarkShadow"), radius: 8, x: 8, y: 8)
            }
        )
        .scaleEffect(circleTapped ? 1.2 : 1)
        .onTapGesture(count: 1) {
            self.circleTapped.toggle()
            self.showingSheet.toggle()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.circleTapped = false
            }
        }
        
        .fullScreenCover(isPresented: $showingSheet) {
           makeTransactionMainView()
        }
    }
    
    func makeTransactionMainView() -> TransactionMainView {
        var view = TransactionMainView()
        view.save = save
        
        return view
    }
}

struct DashboardCircleButton_Previews: PreviewProvider {
    static var previews: some View {
        DashboardCircleButton()
    }
}


