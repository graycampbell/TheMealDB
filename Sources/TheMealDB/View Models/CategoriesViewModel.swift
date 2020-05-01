//
//  CategoriesViewModel.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import Combine
import Foundation

// MARK: Properties & Initializers

class CategoriesViewModel: ObservableObject {
    
    // MARK: Properties
    
    @Published var categories: [Category] = []
    
    var cancellable: AnyCancellable?
    
    // MARK: Initializers
    
    init() {
        self.fetchCategories()
    }
}

// MARK: - Fetching

extension CategoriesViewModel {
    private func fetchCategories() {
        guard let url = TheMealDBAPI.url(.categories) else { return }
        
        self.cancellable = URLSession.shared
            .dataTaskPublisher(for: url)
            .map(\.data)
            .decode(type: CategoriesJSONResponse.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: self.receiveCompletion(_:), receiveValue: self.receiveValue(_:))
    }
    
    private func receiveCompletion(_ completion: Subscribers.Completion<Error>) {
        
    }
    
    private func receiveValue(_ value: CategoriesJSONResponse) {
        self.categories = value.array
    }
}
