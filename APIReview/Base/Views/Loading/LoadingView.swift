//
//  LoadingView.swift
//  APIReview
//
//  Created by Vincent Cloutier on 2021-10-06.
//

import SwiftUI

struct LoadingView: View {
    let text: String
    var body: some View {
        VStack(spacing: 8) {
            ProgressView()
            Text(text)
        }
    }
}

