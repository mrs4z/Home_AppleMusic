//
//  LibraryEditRow.swift
//  AppleMusic
//
//  Created by Александр Горденко on 05.12.2021.
//

import SwiftUI

struct LibraryEditRow: View {
    private var category: Category
    
    init(item: Category) {
        category = item
    }
    
    var body: some View {
        HStack {
            VStack {
                Image(systemName: category.icon)
                    .foregroundColor(Color.red)
            }
            .frame(width: 30, alignment: .center)
            
            Text(category.name)
            Spacer()
        }
    }

}
