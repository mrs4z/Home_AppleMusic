//
//  LibraryView.swift
//  AppleMusic
//
//  Created by Александр Горденко on 04.12.2021.
//

import SwiftUI

struct LibraryView: View {
    @State var isEdit = false
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ZStack {
                    ScrollView(.vertical) {
                        if isEdit {
                            VStack {
                                Divider()
                                LibraryEditView()
                            }
                            .frame(width: geometry.size.width)
                            .frame(minHeight: geometry.size.height)
                        } else {
                            VStack {
                                Divider()
                                LibraryMainView()
                            }
                            .frame(width: geometry.size.width)
                            .frame(minHeight: geometry.size.height)
                        }
                    }
                    .navigationTitle("Медиатека")
                    .navigationBarTitleDisplayMode(.large)
                    .navigationBarItems(trailing:
                        Button(action: {
                            isEdit = !isEdit
                        }, label: {
                            Text(!isEdit ? "Править" : "Готово")
                        }))
                }
            }
        }
    }
}


struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
