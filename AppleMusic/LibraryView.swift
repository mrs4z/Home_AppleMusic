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
                                LibraryEditView()
                            }
                            .frame(width: geometry.size.width)
                            .frame(minHeight: geometry.size.height)
                        } else {
                            VStack {
                                LibraryMainView()
                            }
                            .frame(width: geometry.size.width)
                            .frame(minHeight: geometry.size.height)
                        }
                    }
                    .navigationTitle("Медиатека")
                    .navigationBarItems(trailing:
                        Button(action: {
                            isEdit = !isEdit
                        }, label: {
                            Text(!isEdit ? "Править" : "Готово")
                        }))
                    PlayerView()
                        .offset(x: 0, y: (geometry.size.height / 2) - 38)
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
