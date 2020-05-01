//
//  MealsView.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import SwiftUI

struct MealsView: View {
    @ObservedObject var viewModel: MealsViewModel
    
    init(category: Category) {
        self.viewModel = MealsViewModel(category: category)
    }
    
    var body: some View {
        List(self.viewModel.meals, rowContent: MealRow.init)
            .navigationBarTitle(self.viewModel.category.name)
    }
}

struct MealsView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyView()
    }
}
