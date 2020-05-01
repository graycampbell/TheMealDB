//
//  MealRow.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import SwiftUI

struct MealRow: View {
    var meal: Meal
    
    var body: some View {
        NavigationLink(destination: RecipeView(meal: self.meal)) {
            ThumbnailRow(imageURL: self.meal.imageURL, title: self.meal.name)
        }
    }
}

struct MealRow_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
