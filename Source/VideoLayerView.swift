//
//  PlyerView.swift
//  SwiftUI-Demo
//
//  Created by Simform Solutions on 12/09/19.
//  Copyright © 2019 Simform Solutions. All rights reserved.
//

import UIKit
import AVKit

class VideoLayerView: UIView {
    private let playerLayer = AVPlayerLayer()
    
    convenience init(videoName: String, videoType: String) {
        self.init()
        guard let path = Bundle.main.path(forResource: videoName, ofType: videoType) else {
            debugPrint("Video not found")
            return
        }
        let url = URL(fileURLWithPath: path)
        let player = AVPlayer(url: url)
        self.loopVideo(videoPlayer: player)
        player.play()
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspect
        layer.addSublayer(playerLayer)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    
    func loopVideo(videoPlayer: AVPlayer) {
        NotificationCenter.default.addObserver(forName: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil, queue: nil) { notification in
            videoPlayer.seek(to: CMTime.zero)
            videoPlayer.play()
        }
    }
}
