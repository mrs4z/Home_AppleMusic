//
//  LibraryEditView.swift
//  AppleMusic
//
//  Created by Александр Горденко on 05.12.2021.
//

import SwiftUI

struct LibraryEditView: View {
    @State private var items: [Category] = getItems()
    @State private var selection = Set<Category>()
    
    var body: some View {
        List(selection: $selection) {
            ForEach(items, id: \.self) { item in
                LibraryEditRow(item: item)
                    .listRowBackground(self.isSelected(item: item) ? Color(UIColor.systemGray5) : Color.clear)
            }
            .onMove(perform: move)
        }
        .environment(\.editMode, Binding.constant(EditMode.active))
        .listStyle(.plain)
    }
    
    func isSelected(item: Category) -> Bool {
        return selection.contains(item)
    }

    func move(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }
}

struct LibraryEditView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryEditView()
    }
}
