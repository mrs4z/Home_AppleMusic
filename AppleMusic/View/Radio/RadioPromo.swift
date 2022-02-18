//
//  RadioPromo.swift
//  AppleMusic
//
//  Created by Александр Горденко on 05.12.2021.
//

import SwiftUI

struct RadioPromo: View {
    let promoItems = getItemsPromo()
    let rows = [
        GridItem(.flexible(minimum: 200, maximum: 200))
    ]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(promoItems, id: \.id) { item in
                    VStack(alignment: .leading) {
                        Text(item.label.about)
                            .font(.system(size: 12).weight(.bold))
                            .foregroundColor(Color.gray)
                            .textCase(.uppercase)
                        Spacer()
                        Text(item.title)
                            .font(.system(size: 20).weight(.semibold))
                        Spacer()
                        Text(item.about)
                            .font(.system(size: 20))
                            .foregroundColor(Color.gray)
                            .frame(height: 15)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
                        
                        Image(item.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 320, height: 220)
                            .clipped()
                            .cornerRadius(8)
                    }
                    .frame(width: 320, height: 300)
                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
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
