//
//  FeedCell.swift
//  TikTokClone
//
//  Created by Bilal Mehdi on 16/09/2024.
//

import SwiftUI

struct FeedCell: View {
    var post: Int
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.green)
                .containerRelativeFrame([.horizontal, .vertical])
                .overlay {
                    Text("Post \(post)")
                        .foregroundColor(.white)
                }
            
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
    }
}

#Preview {
    FeedCell(post: 2)
}
