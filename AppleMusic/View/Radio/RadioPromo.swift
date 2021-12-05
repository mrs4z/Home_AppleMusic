//
//  RadioPromo.swift
//  AppleMusic
//
//  Created by Александр Горденко on 05.12.2021.
//

import SwiftUI

struct RadioPromo: View {
    let rows = [
        GridItem(.flexible(minimum: 200, maximum: 200))
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(0..<5) { index in
                    VStack(alignment: .leading) {
                        Text("Эксклюзив")
                            .font(.system(size: 12).weight(.bold))
                            .foregroundColor(Color.gray)
                            .textCase(.uppercase)
                        Spacer()
                        Text("Коллекция радиошоу Beats 1")
                            .font(.system(size: 20).weight(.semibold))
                        Spacer()
                        Text("Новая подборка, которую ты заслужил")
                            .font(.system(size: 20))
                            .foregroundColor(Color.gray)
                        
                        Image("Image")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 320, height: 220)
                            .clipped()
                            .cornerRadius(8)
                    }
                    .frame(width: 320, height: 300)
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                }
            }
            .padding(EdgeInsets(top: 20, leading: 8, bottom: 20, trailing: 0))
        }
    }
}

struct RadioPromo_Previews: PreviewProvider {
    static var previews: some View {
        RadioPromo()
    }
}
