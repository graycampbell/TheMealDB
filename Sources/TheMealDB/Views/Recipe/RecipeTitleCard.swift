//
//  RecipeTitleCard.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import SwiftUI

struct RecipeTitleCard: View {
    let recipe: Recipe
    
    var body: some View {
        Text(self.recipe.name)
            .font(.system(size: 20, weight: .bold))
            .multilineTextAlignment(.center)
            .padding(20)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .modifier(RecipeCard())
    }
}

struct RecipeTitleCard_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
