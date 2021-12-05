//
//  LibraryMainView.swift
//  AppleMusic
//
//  Created by Александр Горденко on 05.12.2021.
//

import SwiftUI

struct LibraryMainView: View {
    var body: some View {
        VStack {
            Text("Ищете свою музыку?")
                .fontWeight(.bold)
                .font(.system(size: 25))
                .padding(.bottom, 5)
            Text("Здесь появится купленная Вами в iTunes Store музыка.")
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

struct LibraryMainView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryMainView()
    }
}
