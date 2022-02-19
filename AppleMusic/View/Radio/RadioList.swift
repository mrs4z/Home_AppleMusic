//
//  RadioList.swift
//  AppleMusic
//
//  Created by Александр Горденко on 05.12.2021.
//

import SwiftUI

struct RadioList: View {
    var colums = [
        GridItem()
    ]
    
    var items = getItemsList()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Станции")
                .font(.system(size: 24).bold())
            
            LazyVGrid(columns: colums) {
                ForEach(items, id: \.id) { item in
                    VStack {
                        HStack {
                            Image(item.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipped()
                                .cornerRadius(8)
                            Spacer()
                            VStack(alignment: .leading) {
                                Text(item.title)
                                    .font(.system(size: 16).bold())
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                                Text(item.about)
                                    .font(.system(size: 14))
                                    .foregroundColor(.gray)
                            }
                            .frame(width: 250, alignment: .leading)
                        }
                        Divider()
                    }
                    .frame(height: 120, alignment: .leading)
                }
            }
        }
        .padding(EdgeInsets(top: 10, leading: 15, bottom: 20, trailing: 15))
    }
}

struct RadioList_Previews: PreviewProvider {
    static var previews: some View {
        RadioList()
    }
}
