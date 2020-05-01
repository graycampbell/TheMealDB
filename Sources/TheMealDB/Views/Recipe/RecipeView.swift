//
//  RecipeView.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct RecipeView: View {
    @ObservedObject var viewModel: RecipeViewModel
    
    init(meal: Meal) {
        self.viewModel = RecipeViewModel(meal: meal)
    }
    
    @ViewBuilder var body: some View {
        if self.viewModel.recipe == nil {
            Text("Recipe Not Found")
            .font(.largeTitle)
            .foregroundColor(.secondary)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        else {
            self.viewModel.recipe.map { recipe in
                ScrollView {
                    VStack(spacing: 20) {
                        HStack(spacing: 10) {
                            RecipeImageCard(recipe: recipe)
                            RecipeTitleCard(recipe: recipe)
                        }
                        .frame(height: 160)
                        
                        RecipeIngredientsCard(recipe: recipe)
                        RecipeInstructionsCard(recipe: recipe)
                    }
                    .padding(20)
                }
                .navigationBarTitle(self.viewModel.meal.name)
            }
        }
        
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
