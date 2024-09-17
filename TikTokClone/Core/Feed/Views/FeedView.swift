//
//  FeedView.swift
//  TikTokClone
//
//  Created by Bilal Mehdi on 16/09/2024.
//

import SwiftUI
import AVKit

struct FeedView: View {
    
    @StateObject var viewModel = FeedViewModel()
    @State var scrollPosition: String?
    @State private var player = AVPlayer()
    
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach (viewModel.posts) { post in
                    FeedCell(post: post, player: player)
                        .id(post.id)
                        .onAppear{ playInitialVideo() }
                }
            }
            .scrollTargetLayout()
        }
        .onAppear { player.play() }
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .onChange(of: scrollPosition) { oldValue, newValue in
            
            //print("New value is \(newValue)")
            playVideoOnChangePositionOfScroll(postId: newValue)
        }
    }
    
    func playInitialVideo() {
        guard scrollPosition == nil,
              let post = viewModel.posts.first,
              player.currentItem == nil else { return }
        
        let item = AVPlayerItem(url: URL(string: post.videoURL)!)
        player.replaceCurrentItem(with: item)
    }
    
    func playVideoOnChangePositionOfScroll(postId: String?) {
        
        guard let currentPost = viewModel.posts.first(where: { $0.id == postId }) else { return }
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string: currentPost.videoURL)!)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}
