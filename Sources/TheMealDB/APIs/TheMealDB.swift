//
//  TheMealDB.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import Foundation

enum TheMealDB {
    enum Endpoint: String {
        case categories
        
        var path: String {
            return "/api/json/v1/1/" + self.rawValue.lowercased() + ".php"
        }
    }
    
    static func url(for endpoint: Endpoint, query: String? = nil) -> URL? {
        var components = URLComponents(string: "https://www.themealdb.com")
        
        components?.path = endpoint.path
        components?.percentEncodedQuery = query?.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
        
        return components?.url
    }
}
