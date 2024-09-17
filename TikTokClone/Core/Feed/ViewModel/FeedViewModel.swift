//
//  FeedViewModel.swift
//  TikTokClone
//
//  Created by Bilal Mehdi on 17/09/2024.
//

//import Foundation
//
//class FeedViewModel: ObservableObject {
//    
//    @Published var posts = [Post]()
//    
//    let videoUrls = [
//        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4",
//        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
//        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
//        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
//        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4"
//
//    ]
//    
//    init() {
//        fetchPosts()
//    }
//    
//    func fetchPosts() {
//        self.posts = [
//            .init(id: NSUUID().uuidString, videoURL: videoUrls[0]),
//            .init(id: NSUUID().uuidString, videoURL: videoUrls[1]),
//            .init(id: NSUUID().uuidString, videoURL: videoUrls[2]),
//            .init(id: NSUUID().uuidString, videoURL: videoUrls[3]),
//            .init(id: NSUUID().uuidString, videoURL: videoUrls[4]),
//        ]
//    }
//}


import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()

    let videoUrls = [
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4"
    ]

    init() {
        fetchPosts()
    }

    func fetchPosts() {
        self.posts = [
            .init(id: NSUUID().uuidString, videoURL: videoUrls[0]),
            .init(id: NSUUID().uuidString, videoURL: videoUrls[1]),
            .init(id: NSUUID().uuidString, videoURL: videoUrls[2]),
            .init(id: NSUUID().uuidString, videoURL: videoUrls[3]),
        ]
    }
}
