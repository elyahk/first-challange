//
//  HistoryView.swift
//  first challange
//
//  Created by Yahya Momtaz on 26/10/22.
//

import SwiftUI

struct HistoryView: View {
    //        history search bar
    //        segment control
    //        dashboard list view
    @State var segmentedChoice = 0
    var body: some View {
        VStack{
            Picker("",selection: $segmentedChoice){
                Text ("All").tag(0)
                Text ("Expences").tag(1)
                Text ("Incomes").tag(2)
            }.padding() .pickerStyle(SegmentedPickerStyle())
            
            Text("Date")
                .padding(.leading, -170.0)
            
            DashboardListView()
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
