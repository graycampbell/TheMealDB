//
//  CategoriesView.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import SwiftUI

struct CategoriesView: View {
    @ObservedObject var viewModel = CategoriesViewModel()
    
    var body: some View {
        List(self.viewModel.categories, rowContent: CategoryRow.init)
            .navigationBarTitle("Categories")
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
