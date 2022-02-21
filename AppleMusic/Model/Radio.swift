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

struct PromoItem: Identifiable {
    let id = UUID()
    let label: Label
    let title: String
    let about: String
    let image: String
}

struct ListItem: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let about: String
}

func getItemsPromo() -> [PromoItem] {
    [
        PromoItem(label: Label(about: "Эксклюзив"), title: "Клубная музыка 2021", about: "", image: "Image"),
        PromoItem(label: Label(about: "Новинка"), title: "OXXYMIRON", about: "Красота и уродство", image: "Image-2"),
        PromoItem(label: Label(about: "Избранное"), title: "Radio Record", about: "Новогоднее настроение", image: "Image-3"),
        PromoItem(label: Label(about: "Избранное"), title: "Like FM - Клава Кока", about: "Хит от звезды", image: "Image-4"),
        PromoItem(label: Label(about: "Избранное"), title: "DFM", about: "Врывайся в новый формат", image: "Image-5"),
    ]
}

func getItemsList() -> [ListItem] {
    [
        ListItem(image: "Image-1", title: "Классика", about: "Слушай то, что нравится"),
        ListItem(image: "Image-2", title: "OXXYMIRON", about: "Разрывает хиты"),
        ListItem(image: "Image-3", title: "Radio Record", about: "Новые битмейкеры"),
        ListItem(image: "Image-5", title: "DFM", about: "Релиз к новому году"),
        ListItem(image: "Image-4", title: "Like FM", about: "Клава Кока - главный хит"),
    ]
}
