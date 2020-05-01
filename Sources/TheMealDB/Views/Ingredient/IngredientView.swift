//
//  IngredientView.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct IngredientView: View {
    let ingredient: String
    let measurement: String
    
    private var imageURL: URL? {
        return TheMealDBAPI.imageURL(forIngredient: self.ingredient)
    }
    
    var body: some View {
        HStack(spacing: 10) {
            KFImage(self.imageURL)
                .resizable()
                .frame(width: 25, height: 25)
            Text(self.ingredient)
                .bold()
            Spacer()
            Text(self.measurement)
                .foregroundColor(.secondary)
                .bold()
        }
    }
}

struct IngredientView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientView(ingredient: "Onion", measurement: "2 Cups")
    }
}
