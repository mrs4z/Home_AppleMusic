//
//  Structs.swift
//  AppleMusic
//
//  Created by Александр Горденко on 05.12.2021.
//

import Foundation

struct Category: Hashable, Identifiable {
    let id: UUID = UUID()
    let icon: String
    let name: String
}

func getItems() -> [Category] {
    [
        Category(icon: "music.note.list", name: "Плейлисты"),
        Category(icon: "music.mic", name: "Артисты"),
        Category(icon: "square.stack", name: "Альбомы"),
        Category(icon: "music.note", name: "Песни"),
        Category(icon: "tv", name: "Телешоу и фильмы"),
        Category(icon: "music.note.tv", name: "Видеоклипы"),
        Category(icon: "pianokeys", name: "Жанры"),
        Category(icon: "person.2.crop.square.stack", name: "Сборники"),
        Category(icon: "music.quarternote.3", name: "Авторы"),
        Category(icon: "arrow.down.circle", name: "Загружено"),
        Category(icon: "music.note.house", name: "Домашняя коллекция"),
    ]
}
