//
//  PostGridView.swift
//  TikTokClone
//
//  Created by Bilal Mehdi on 16/09/2024.
//

import SwiftUI

struct PostGridView: View {
    
    private let items = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible())
    ]
    
    private let width = (UIScreen.main.bounds.width / 3) - 2
    var body: some View {
        LazyVGrid(columns: items, spacing: 2) {
            ForEach (0 ..< 25) { post in
                Rectangle()
                    .frame(width: width, height: 160)
                    .clipped()
                
            }
        }
        
    }
}


#Preview {
    PostGridView()
}
