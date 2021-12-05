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
    var body: some View {
        VStack(alignment: .leading) {
            Text("Станции")
                .font(.system(size: 24).bold())
            
            LazyVGrid(columns: colums) {
                ForEach(0..<5) { i in
                    VStack {
                        HStack {
                            Image("Image-1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipped()
                                .cornerRadius(8)
                            Spacer()
                            VStack(alignment: .leading) {
                                Text("Классика")
                                    .font(.system(size: 16).bold())
                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 1, trailing: 0))
                                Text("То, что слушают прямо сейчас")
                                    .font(.system(size: 14))
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                        }
                        
                        Divider()
                    }
                    .frame(height: 120, alignment: .leading)
                    //.border(Color.gray, width: 1)
                    
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
