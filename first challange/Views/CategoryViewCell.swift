//
//  CollectionViewCell.swift
//  SwiftUICollectionView
//
//  Created by Rajesh Rajesh on 22/04/20.
//  Copyright © 2020 Rajesh Rajesh. All rights reserved.
//

import SwiftUI

struct CategoryViewCell: View {
    var category: CategoryImageModel
    
    var body: some View {
        VStack {
            CategoryImageView(model: category)
        }
        .border(Color.black, width: category.isSelected ? 4 : 0)
    }
}

struct CollectionViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CategoryViewCell(
            category: CategoryImageModel(image: "bell", color: .main_purple)
        )
    }
}

