//
//  CustomVideoPlayer.swift
//  TikTokClone
//
//  Created by Bilal Mehdi on 17/09/2024.
//



import SwiftUI
import AVKit

struct CustomVideoPlayer: UIViewControllerRepresentable {
    
    var player: AVPlayer
    
    // Implement the required methods
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        controller.player = player
        controller.showsPlaybackControls = false
        controller.exitsFullScreenWhenPlaybackEnds = true
        controller.allowsPictureInPicturePlayback = true
        controller.videoGravity = .resizeAspectFill   // make full screen
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        
    }
}

