//
//  RecipeViewModel.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import Combine
import Foundation

// MARK: Properties & Initializers

class RecipeViewModel: ObservableObject {
    
    // MARK: Properties
    
    @Published var recipe: Recipe?
    
    var cancellable: AnyCancellable?
    
    let meal: Meal
    
    // MARK: Initializers
    
    init(meal: Meal) {
        self.meal = meal
        
        self.fetchRecipe()
    }
}

// MARK: - Fetching

extension RecipeViewModel {
    private func fetchRecipe() {
        let query = "i=\(self.meal.id)"
        
        guard let url = TheMealDBAPI.url(.lookup, query: query) else { return }
        
        self.cancellable = URLSession.shared
            .dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: RecipesJSONResponse.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: self.receiveCompletion(_:), receiveValue: self.receiveValue(_:))
    }
    
    private func receiveCompletion(_ completion: Subscribers.Completion<Error>) {
        
    }
    
    private func receiveValue(_ value: RecipesJSONResponse) {
        self.recipe = value.array.first
    }
}
