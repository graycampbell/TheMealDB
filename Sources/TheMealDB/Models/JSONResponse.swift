//
//  JSONResponse.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import Foundation

protocol JSONResponse: Decodable {
    associatedtype Response
    
    var array: Response { get }
}
