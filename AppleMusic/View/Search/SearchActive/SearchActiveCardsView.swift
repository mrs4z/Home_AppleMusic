//
//  SearchActiveCardsView.swift
//  AppleMusic
//
//  Created by Александр Горденко on 06.12.2021.
//

import SwiftUI

struct SearchActiveCardsView: View {
    var columns = [
        GridItem(.flexible())
    ]
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Песни")
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
                    HStack {
                        Image("Image-\(i + 1)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 120, height: 120)
                            .clipped()
                            .cornerRadius(8)
                            
                        Spacer()
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Песня \(i + 1)")
                                    .padding(.bottom, 2)
                                Text("Альбом песни \(i + 1)")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            Image(systemName: "chevron.forward")
                        }
                        .frame(width: 210, height: 120, alignment: .leading)
                    }
                    Divider()
                }
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 15))
            }
        }
        .padding(.top, 20)
    }
}

struct SearchActiveCardsView_Previews: PreviewProvider {
    static var previews: some View {
        SearchActiveCardsView()
    }
}
