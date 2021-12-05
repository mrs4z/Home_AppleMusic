//
//  RadioView.swift
//  AppleMusic
//
//  Created by Александр Горденко on 05.12.2021.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                RadioPromo()
                Divider()
                RadioList()
            }
            .navigationTitle("Радио")
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
