//
//  CategoryImageView.swift
//  first challange
//
//  Created by Gennaro Caccavallo on 25/10/22.
//

import SwiftUI
struct CategoryImageView: View {
    let model: CategoryImageModel
    
    init(model: CategoryImageModel) {
        self.model = model
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .fill(Color(model.color))
            Image(systemName: model.image)
                .foregroundColor(.white)
        }
    }
}
struct CategoryImageView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryImageView(model: CategoryImageModel(image: "bell", color: .main_red_color))
    }
}
