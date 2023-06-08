//
//  VideoManager.swift
//  VideoRecorder
//
//  Created by kokkilE on 2023/06/06.
//

import Combine
import Foundation

final class VideoManager {
    static let shared = VideoManager()
    
    private init() {}
    
    @Published var videoList: [Video] = [
        Video(data: nil, title: "111111", date: Date())
    ]
    
    func create(video: Video) {
        videoList.append(video)
    }
}