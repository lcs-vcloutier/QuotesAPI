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
