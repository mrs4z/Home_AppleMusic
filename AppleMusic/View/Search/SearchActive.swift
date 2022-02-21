//
//  SearchActive.swift
//  AppleMusic
//
//  Created by Александр Горденко on 06.12.2021.
//

import SwiftUI

struct SearchActive: View {
    @Binding var textSearch: String
    // show items
    var items: [String] = [
        "Morgenstern",
        "OxxyMiron",
        "ATL",
        "Клава Кока",
        "Kizaru",
        "BigBabyTape"
    ]
    
    private var itemsFormat: [String] {
        if textSearch.isEmpty {
            return items
        } else {
            return items.filter { $0.lowercased().contains(textSearch.lowercased()) }
        }
    }
    
    var body: some View {
        ScrollView {
        VStack {
            SearchActiveListView(item: itemsFormat)
            SearchActiveCardsView()
            }
        }
    }
}

struct SearchActive_Previews: PreviewProvider {
    static var previews: some View {
        SearchActive(textSearch: .constant(""))
    }
}
