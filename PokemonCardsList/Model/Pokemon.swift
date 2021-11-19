//
//  Pokemon.swift
//  PokemonCardsList
//
//  Created by Arkadijs Makarenko on 19/11/2021.
//

import Foundation

struct Pokemon: Decodable {
    let id: String
    let name: String
    let image: String
    let number: String
    let supertype: String?
    let subtype: String?
    let set: String?
    let series: String
    let rarity: String
    let setCode: String
    
    enum CodingKeys: String, CodingKey{
        case name, id, series
        case image = "imageUrl"
        case number, supertype, subtype, set, rarity, setCode
    }
}

struct Card: Decodable {
    let cards: [Pokemon]
}

