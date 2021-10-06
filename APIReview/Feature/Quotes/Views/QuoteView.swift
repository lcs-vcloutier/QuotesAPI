//
//  QuoteView.swift
//  APIReview
//
//  Created by Vincent Cloutier on 2021-10-06.
//

import SwiftUI

@available(iOS 15, *)
struct QuoteView: View {
    
    let item: Quote
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: "tv")
                    .font(.system(size: 12, weight: .black))
                Text(item.anime)
            }
            Text(makeAttributedString(title: "Character", label: item.character))
            Text(makeAttributedString(title: "Quotes", label: item.quote))
                .lineLimit(2)
        }
        .padding()
    }
    // Make a nice string
    private func makeAttributedString(title: String, label: String) -> AttributedString {
        
        var string = AttributedString("\(title): \(label)")
        string.foregroundColor = .black
        string.font = .system(size: 16, weight: .bold)
        
        if let range = string.range(of: label) {
            string[range].foregroundColor = .black.opacity(0.8)
            string[range].font = .system(size: 16, weight: .bold)
        }
        return string
    }

}
