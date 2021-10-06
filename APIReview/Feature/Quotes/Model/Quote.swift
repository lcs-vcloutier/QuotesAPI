//
//  Quote.swift
//  APIReview
//
//  Created by Vincent Cloutier on 2021-10-06.
//

import Foundation

struct Quote: Decodable {
    // They are constants so that no one can change them - data you recieve matches your model
    let anime: String
    let character: String
    let quote: String
}

extension Quote {
    
    static let dummyData: [Quote] = [
        Quote(anime: "Anime 1", character: "Character 1", quote: "Quote 1"),
        Quote(anime: "Anime 2", character: "Character 2", quote: "Quote 2"),
        Quote(anime: "Anime 3", character: "Character 3", quote: "Quote 3"),
        Quote(anime: "Anime 4", character: "Character 4", quote: "Quote 4"),
        Quote(anime: "Anime 5", character: "Character 5", quote: "Quote 5S")
    ]
}
