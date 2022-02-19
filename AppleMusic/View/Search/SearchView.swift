//
//  SearchView.swift
//  AppleMusic
//
//  Created by Александр Горденко on 05.12.2021.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""

    var body: some View {
        NavigationView {
                SearchReadingView(textSearch: $searchText)
                    .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Артисты, песни, тексты и др.")
                    .navigationTitle("Поиск")
            
        }
    }
}

struct SearchReadingView: View {
    @Environment(\.isSearching) var isSearching
    @Binding var textSearch: String
    var body: some View {
        if isSearching {
            SearchActive(textSearch: $textSearch)
        } else {
            SearchInActive()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
