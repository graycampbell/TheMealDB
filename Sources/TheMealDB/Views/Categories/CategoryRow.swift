//
//  CategoryRow.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct CategoryRow: View {
    var category: Category
    
    var body: some View {
        HStack {
            KFImage(self.category.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .padding(.trailing, 10)
            Text(self.category.name)
                .bold()
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
