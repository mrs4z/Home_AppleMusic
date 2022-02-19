//
//  ContentView.swift
//  AppleMusic
//
//  Created by Александр Горденко on 04.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            TabView {
                LibraryView()
                    .tabItem {
                        Image(systemName: "music.note.tv.fill")
                        Text("Медиатека")
                    }
                
                RadioView()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)
            PlayerView()
                .offset(x: 0, y: (geometry.size.height) - 108)
            Divider()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
