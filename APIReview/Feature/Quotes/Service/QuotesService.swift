//
//  QuotesService.swift
//  APIReview
//
//  Created by Vincent Cloutier on 2021-10-06.
//

import Foundation

// Get list of new quotes

@available(iOS 15.0.0, *)
protocol QuotesService {
    func fetch() async throws -> [Quote]
}

@available(iOS 15.0.0, *)
final class QuotesServiceImpl: QuotesService {
    func fetch() async throws -> [Quote] {
        let urlSession = URLSession.shared
        let url = URL(string: APIConstants.baseURL.appending("/api/quotes")) // appending stuff to api constant
        let (data, _) = try await urlSession.data(from: url!) // interact with api
        return try JSONDecoder().decode([Quote].self, from: data) // if successful decode data if fails throw an error
    }
}
