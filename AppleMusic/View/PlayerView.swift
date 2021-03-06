//
//  PlayerView.swift
//  AppleMusic
//
//  Created by Александр Горденко on 05.12.2021.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        ZStack {
//            Color(UIColor.systemGray6).ignoresSafeArea()
            HStack {
                HStack {
                    ZStack {
                        Rectangle()
                            .fill(Color(UIColor.systemGray5))
                            .frame(width: 40, height: 40)
                            .shadow(color: Color(UIColor.systemGray3), radius: 4, x: 0, y: 0)
                        Image(systemName: "music.quarternote.3")
                            .foregroundColor(Color(UIColor.systemGray3))
                    }
                    Text("Не исполняется")
                        .offset(x: 10, y: 0)
                        .foregroundColor(Color(UIColor.black))
                    
                }
                Spacer()
                HStack {
                    Image(systemName: "play.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 20)
                        .foregroundColor(Color(UIColor.black))
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                    Image(systemName: "forward.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(UIColor.darkGray))
                        
                }
            }
            .padding()
        }
        .frame(minHeight: 60, maxHeight: 60)
        .foregroundColor(.white)
        .background(.ultraThinMaterial)
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
