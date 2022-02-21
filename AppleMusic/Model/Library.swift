//
//  Library.swift
//  AppleMusic
//
//  Created by Александр Горденко on 05.12.2021.
//

import Foundation

struct LibraryCategory: Hashable, Identifiable {
    let id: UUID = UUID()
    let icon: String
    let name: String
}

func getItemsLibrary() -> [LibraryCategory] {
    [
        LibraryCategory(icon: "music.note.list", name: "Плейлисты"),
        LibraryCategory(icon: "music.mic", name: "Артисты"),
        LibraryCategory(icon: "square.stack", name: "Альбомы"),
        LibraryCategory(icon: "music.note", name: "Песни"),
        LibraryCategory(icon: "tv", name: "Телешоу и фильмы"),
        LibraryCategory(icon: "music.note.tv", name: "Видеоклипы"),
        LibraryCategory(icon: "pianokeys", name: "Жанры"),
        LibraryCategory(icon: "person.2.crop.square.stack", name: "Сборники"),
        LibraryCategory(icon: "music.quarternote.3", name: "Авторы"),
        LibraryCategory(icon: "arrow.down.circle", name: "Загружено"),
        LibraryCategory(icon: "music.note.house", name: "Домашняя коллекция"),
    ]
}
