//
//  QuotesScreen.swift
//  APIReview
//
//  Created by Vincent Cloutier on 2021-10-06.
//

import SwiftUI

@available(iOS 15, *)
struct QuotesScreen: View {
    
    @StateObject private var vm = QuotesViewModelImpl(service: QuotesServiceImpl())
    
    var body: some View {
        
        Group {
            if vm.quotes.isEmpty {
                VStack(spacing: 8) {
                    ProgressView()
                    Text("Fetching Quotes")
                }
            } else {
                List {
                    // Loop through dummy data
                    ForEach(vm.quotes, id: \.anime) { item in
                        QuoteView(item: item)
                    }
                }
            }
        }
        .task {
            await vm.getRandomQuotes()
        }
    }
}

