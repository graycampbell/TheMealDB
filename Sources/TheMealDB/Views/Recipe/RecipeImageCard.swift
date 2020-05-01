//
//  RecipeImageCard.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct RecipeImageCard: View {
    let recipe: Recipe
    
    var body: some View {
        KFImage(self.recipe.imageURL)
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .modifier(RecipeCard())
    }
}

struct RecipeImageCard_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
