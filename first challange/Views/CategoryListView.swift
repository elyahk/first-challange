//
//  CategoryListView.swift
//  first challange
//
//  Created by Gennaro Caccavallo on 26/10/22.
//

import SwiftUI

struct CategoryListView: View {
    @State var isExpense: Bool
    
    var count: Int {
        isExpense ? 2 : 1
    }
    
    var categories: [CategoryImageModel] {
        isExpense ? Categories().categories : Categories().incomes
    }
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(0 ..< count){ i in
                    HStack(alignment: .center, spacing: cell.spacing){
                        ForEach(0 ..< 4){ j in
                            let id = i * 4 + j
                            Button {

                            } label: {
                                CategoryViewCell(category: categories[id])
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
        CategoryListView(isExpense: false)
    }
}
