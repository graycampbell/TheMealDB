//
//  ThumbnailRow.swift
//  TheMealDB
//
//  Created by Gray Campbell on 4/30/20.
//  Copyright © 2020 Gray Campbell. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct ThumbnailRow: View {
    let imageURL: URL?
    let title: String
    
    var body: some View {
        HStack {
            KFImage(self.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .padding(.trailing, 10)
            Text(self.title)
                .bold()
        }
    }
}

struct ThumbnailRow_Previews: PreviewProvider {
    static var previews: some View {
        ThumbnailRow(imageURL: nil, title: "Title")
    }
}
