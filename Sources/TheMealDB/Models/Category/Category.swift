//
//  Category.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import Foundation

// MARK: Coding Keys & Properties

struct Category: Decodable, Identifiable {
    
    // MARK: Coding Keys
    
    private enum CodingKeys: String, CodingKey {
        case id = "idCategory"
        case name = "strCategory"
        case imageURLString = "strCategoryThumb"
        case description = "strCategoryDescription"
    }
    
    // MARK: Properties
    
    let id: String
    let name: String
    let imageURLString: String
    let description: String
    
    var imageURL: URL? {
        return URL(string: self.imageURLString)
    }
}
