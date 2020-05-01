//
//  MealsViewModel.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import Combine
import Foundation

// MARK: Properties & Initializers

class MealsViewModel: ObservableObject {
    
    // MARK: Properties
    
    @Published var meals: [Meal] = []
    
    var cancellable: AnyCancellable?
    
    let category: Category
    
    // MARK: Initializers
    
    init(category: Category) {
        self.category = category
        
        self.fetchMeals()
    }
}

// MARK: - Fetching

extension MealsViewModel {
    private func fetchMeals() {
        let query = "c=\(self.category.name)"
        
        guard let url = TheMealDBAPI.url(.filter, query: query) else { return }
        
        self.cancellable = URLSession.shared
            .dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: MealsJSONResponse.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: self.receiveCompletion(_:), receiveValue: self.receiveValue(_:))
    }
    
    private func receiveCompletion(_ completion: Subscribers.Completion<Error>) {
        
    }
    
    private func receiveValue(_ value: MealsJSONResponse) {
        self.meals = value.array
    }
}
