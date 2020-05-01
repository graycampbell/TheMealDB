//
//  CategoryRow.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {
    var category: Category
    
    var body: some View {
        NavigationLink(destination: MealsView(category: self.category)) {
            ThumbnailRow(imageURL: self.category.imageURL, title: self.category.name)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
