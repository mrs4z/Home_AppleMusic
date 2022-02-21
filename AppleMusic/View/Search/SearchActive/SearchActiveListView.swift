//
//  SearchActiveListView.swift
//  AppleMusic
//
//  Created by Александр Горденко on 06.12.2021.
//

import SwiftUI

struct SearchActiveListView: View {
    var items: [String] = []
    
    init(item: [String]) {
        items = item
    }
    
    var body: some View {
        VStack {
            ForEach(items, id: \.self) { item in
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        HStack(spacing: 0) {
                            Text(item)
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
                    Divider()
                }
            }
        }
        .padding(.top, 10)
    }
}

struct SearchActiveListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchActiveListView(item: ["xyu"])
    }
}
