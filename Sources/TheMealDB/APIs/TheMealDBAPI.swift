//
//  TheMealDBAPI.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import Foundation

struct TheMealDBAPI {
    enum DecodingError: LocalizedError {
        case codingKeyNotFound(String)
        
        var errorDescription: String? {
            guard case let .codingKeyNotFound(codingKey) = self else {
                return nil
            }
            
            return "Coding Key Not Found: \(codingKey)"
        }
    }
    
    enum Endpoint: String {
        case categories, filter, lookup
        
        var path: String {
            return "/api/json/v1/1/" + self.rawValue.lowercased() + ".php"
        }
    }
    
    static func url(_ endpoint: Endpoint, query: String? = nil) -> URL? {
        var components = URLComponents(string: "https://www.themealdb.com")
        
        components?.path = endpoint.path
        components?.percentEncodedQuery = query?.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        
        return components?.url
    }
    
    static func imageURL(forIngredient ingredient: String) -> URL? {
        guard let percentEncodedIngredient = ingredient.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) else {
            return nil
        }
        
        return URL(string: "https://www.themealdb.com/images/ingredients/\(percentEncodedIngredient).png")
    }
}
