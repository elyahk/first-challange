//
//  CategoryListView.swift
//  first challange
//
//  Created by Gennaro Caccavallo on 26/10/22.
//

import SwiftUI

struct CategoryListView: View {
    @Binding var isExpense: Int
    var selected: ((CategoryImageModel) -> Void)? = nil
        
    var categories: [CategoryImageModel] {
        isExpense == 0 ? Categories().categories : Categories().incomes
    }
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                
                if isExpense == 0 {
                    ForEach(0 ..< 2){ i in
                        HStack(alignment: .center, spacing: cell.spacing){
                            ForEach(0 ..< 4){ j in
                                var id = i * 4 + j
                                Button {
                                    selected?(categories[id])
                                } label: {
                                    CategoryViewCell(category: categories[id])
                                }
                            }
                        }
                        .padding(.bottom, 10)
                    }
                } else {
                    ForEach(0 ..< 1){ i in
                        HStack(alignment: .center, spacing: cell.spacing){
                            ForEach(0 ..< 4){ j in
                                var id = i * 4 + j
                                Button {
                                    selected?(categories[id])
                                } label: {
                                    CategoryViewCell(category: categories[id])
                                }
                            }
                        }
                        .padding(.bottom, 10)
                    }
                }
            }
            .padding([.top], 20)
            .scrollDisabled(true)
        }
    }
}
//
//struct CategoryListView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryListView(isExpense: Binding(0))
//    }
//}
