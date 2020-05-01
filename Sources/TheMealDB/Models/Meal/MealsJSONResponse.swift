//
//  MealsJSONResponse.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import Foundation

// MARK: Coding Keys & Properties

struct MealsJSONResponse: JSONResponse {
    
    // MARK: Coding Keys
    
    private enum CodingKeys: String, CodingKey {
        case array = "meals"
    }
    
    // MARK: Properties
    
    let array: [Meal]
}
