//
//  QuotesScreen.swift
//  APIReview
//
//  Created by Vincent Cloutier on 2021-10-06.
//

import SwiftUI

@available(iOS 15, *)
struct QuotesScreen: View {
    var body: some View {
        List {
            // Loop through dummy data
            ForEach(Quote.dummyData, id: \.anime) { item in
                QuoteView(item: item)
                .padding()
                .foregroundColor(.black)
            }
            
        }
    }
}

