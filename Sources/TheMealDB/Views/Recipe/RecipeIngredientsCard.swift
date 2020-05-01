//
//  RecipeIngredientsCard.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import SwiftUI

struct RecipeIngredientsCard: View {
    let recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Ingredients")
                .foregroundColor(.secondary)
                .font(.system(size: 16, weight: .bold))
            ForEach((0..<self.recipe.ingredients.count)) { index in
                IngredientView(ingredient: self.recipe.ingredients[index], measurement: self.recipe.measurements[index])
            }
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .modifier(RecipeCard())
    }
}

struct RecipeIngredientsCard_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
