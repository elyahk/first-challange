//
//  CategoryListView.swift
//  first challange
//
//  Created by Gennaro Caccavallo on 26/10/22.
//

import SwiftUI

struct CategoryListView: View {
    var body: some View {
        NavigationView{
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(0 ..< cell.row){ i in
                HStack(alignment: .center, spacing: cell.spacing){
                    ForEach(0 ..< cell.column){ j in
                        CollectionViewCell(row: i, column: j)
                    }
                }
                .padding(.bottom, 10)
            }
        }
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
