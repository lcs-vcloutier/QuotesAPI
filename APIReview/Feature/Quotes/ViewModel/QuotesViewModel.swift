//
//  QuotesViewModel.swift
//  APIReview
//
//  Created by Vincent Cloutier on 2021-10-06.
//

import Foundation

// Interact with service class and handle any additional business logic

@available(iOS 15.0.0, *)
protocol QuotesViewModel: ObservableObject {
    func getRandomQuotes() async
}

@available(iOS 15.0.0, *)
@MainActor // You need this w/ async await to signify you want to update this on the main thread
final class QuotesViewModelImpl: QuotesViewModel {
    
    @Published private(set) var quotes: [Quote] = [] // access from outside can't change from outside
    
    private let service: QuotesService
    
    init(service: QuotesService) {
        self.service = service
    }
    func getRandomQuotes() async {
        do {
            self.quotes = try await service.fetchRandomQuotes()
        } catch {
            print(error)
        }
    }
}
