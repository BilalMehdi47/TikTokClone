//
//  FeedCell.swift
//  TikTokClone
//
//  Created by Bilal Mehdi on 16/09/2024.
//

import SwiftUI
import AVKit

struct FeedCell: View {
    
    var post: Post
    var player: AVPlayer
    
    init(post: Post, player: AVPlayer) {
        self.post = post
       // self.player = AVPlayer(url: URL(string: post.videoURL)!)
        self.player = player
    }
    
    var body: some View {
        ZStack {
            CustomVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal, .vertical])
            
            VStack {
                Spacer()
                
                HStack(alignment: .bottom) {
                    
                    VStack(alignment: .leading) {
                        
                        Text("Space X")
                        
                        Text("Rocket is ready to take off")
                    }
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    
                    Spacer()
                    
                    
                    VStack(spacing: 28) {
                        
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(.white)
                        
                        Button {
                            
                        } label: {
                            
                            VStack {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundStyle(.white)
                                
                                Text("27")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            
                            VStack {
                                
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundStyle(.white)
                                
                                Text("7")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                            }
                        }
                        
                        Button {
                            
                        } label: {
                            
                            Image(systemName: "bookmark.fill")
                                .resizable()
                                .frame(width: 22, height: 30)
                                .foregroundStyle(.white)
                        }
                        
                        Button {
                            
                        } label: {
                            
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.white)
                        }
                    }
                    
                }
                .padding(.bottom, 80)
            }
            .padding()
        }
        .onTapGesture {
            switch player.timeControlStatus {
            case .paused:
                player.play()
            case .waitingToPlayAtSpecifiedRate:
                break
            case .playing:
                player.pause()
            @unknown default:
                break
            }
        }

    }
}

#Preview {
    FeedCell(post: Post(id: NSUUID().uuidString, videoURL: ""), player: AVPlayer())
}
