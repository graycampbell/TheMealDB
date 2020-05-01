//
//  RecipeInstructionsCard.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import SwiftUI

struct RecipeInstructionsCard: View {
    let recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Instructions")
                .foregroundColor(.secondary)
                .font(.system(size: 16, weight: .bold))
            Text(self.recipe.instructions)
                .font(.system(size: 18, weight: .bold))
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .modifier(RecipeCard())
    }
}

struct RecipeInstructionsCard_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
