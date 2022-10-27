//
//  CollectionViewCell.swift
//  SwiftUICollectionView
//
//  Created by Rajesh Rajesh on 22/04/20.
//  Copyright © 2020 Rajesh Rajesh. All rights reserved.
//

import SwiftUI

struct CollectionViewCell: View {
    var category: CategoryImageModel
    
    init(category: CategoryImageModel) {
        self.category = category
    }
    var body: some View {
        
        ZStack {
            CategoryImageView(model: category)
        } .onTapGesture {
        }
        
    }
}

struct CollectionViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionViewCell(category: CategoryImageModel(image: "bell", color: .main_purple))
    }
}

