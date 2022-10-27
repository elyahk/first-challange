//
//  CategoryListView.swift
//  first challange
//
//  Created by Gennaro Caccavallo on 26/10/22.
//

import SwiftUI

struct CategoryListView: View {
    let itemSize = ((screenWidth - 40) / 4) - 20
    let categories: [CategoryImageModel] = Categories().categories
    
    var body: some View {
        NavigationView{
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(0 ..< categories.count / 4 + 1){ i in
                HStack(alignment: .center, spacing: cell.spacing){
                    ForEach(0 ..< 4){ j in
                        let id = i * 4 + j
                        if id < categories.count {
                            CollectionViewCell(category: categories[0])
                                .frame(width: itemSize, height: itemSize)
                        }
                    }
                }
                .padding(.bottom, 10)
            }
        }
        .padding([.top], 20)
      //  .navigationBarTitle("Category")
     //   .navigationBarTitleDisplayMode(.large)
        .scrollDisabled(true)
        }
    }
}
struct CategoryListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListView()
    }
}
