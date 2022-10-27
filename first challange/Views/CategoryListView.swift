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
                ForEach(0 ..< 2){ i in
                    HStack(alignment: .center, spacing: cell.spacing){
                        ForEach(0 ..< 4){ j in
                            let id = i * 4 + j
                                CollectionViewCell(category: categories[id])
                                    .frame(width: itemSize, height: itemSize)
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
