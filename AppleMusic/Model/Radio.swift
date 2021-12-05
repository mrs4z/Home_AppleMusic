//
//  Radio.swift
//  AppleMusic
//
//  Created by Александр Горденко on 05.12.2021.
//

import Foundation

struct Label {
    let about: String
}

//enum Labels {
//    case love(item: Label(description: "Избранное"))
//    case star(item: Label(description: "Эксклюзив"))
//}

struct PromoItem {
    let label: Label
    let title: String
    let about: String
    let image: String
}

struct ListItem {
    let image: String
    let title: String
    let about: String
}
