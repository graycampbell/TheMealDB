//
//  ContentView.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(content: CategoriesView.init)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
