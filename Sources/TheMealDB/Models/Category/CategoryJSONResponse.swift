//
//  CategoryJSONResponse.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import Foundation

// MARK: Coding Keys & Properties

struct CategoriesJSONResponse: JSONResponse {
    
    // MARK: Coding Keys
    
    private enum CodingKeys: String, CodingKey {
        case array = "categories"
    }
    
    // MARK: Properties
    
    let array: [Category]
}
