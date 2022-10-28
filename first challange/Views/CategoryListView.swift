//
//  CategoryListView.swift
//  first challange
//
//  Created by Gennaro Caccavallo on 26/10/22.
//

import SwiftUI

struct CategoryListView: View {
    @State var categories: Categories = Categories()
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(0 ..< 2){ i in
                    HStack(alignment: .center, spacing: cell.spacing){
                        ForEach(0 ..< 4){ j in
                            let id = i * 4 + j
                            Button {
//                                categories.makeDisableAll()
//                                categories.categories[id].isSelected = true
                            } label: {
                                CategoryViewCell(category: categories.categories[id])
                            }
                        }
                    }
                    .padding(.bottom, 10)
                }
            }
            .padding([.top], 20)
            .scrollDisabled(true)
        }
    }
}

struct CategoryListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListView()
    }
}
