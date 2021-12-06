//
//  SearchInActive.swift
//  AppleMusic
//
//  Created by Александр Горденко on 06.12.2021.
//

import SwiftUI

struct SearchInActive: View {
    var columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                Text("Поиск по категории")
                    .font(.system(size: 18).bold())
                    .padding(.leading, 15)
            }
            .frame(
                maxWidth: .infinity,
                maxHeight: .infinity,
                alignment: .topLeading
            )
            
            LazyVGrid(columns: columns) {
                ForEach(0..<5) { i in
                    ZStack {
                        Image("Image-\(i + 1)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 167, height: 130)
                            .clipped()
                            .cornerRadius(8)
                        Spacer()
                        Text("Новое радио")
                            .font(.system(size: 15).weight(.heavy))
                            .foregroundColor(.white)
                            .frame(width: 160, height: 130, alignment: .bottomLeading)
                            .padding(.bottom, 30)
                            .padding(.leading, 20)
                    }
                    .frame(width: 167, height: 130)
                }
            }
            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
        }
    }
}

struct SearchInActive_Previews: PreviewProvider {
    static var previews: some View {
        SearchInActive()
    }
}
