//
//  SwiftUIVideoPlayerView.swift
//  SSSwiftUIVideoPlayerLayer
//
//  Created by Simform Solutions on 08/01/20.
//

import SwiftUI

public struct SwiftUIVideoLayerView: UIViewRepresentable {
    
    private var videoName: String
    private var videoType: String
    
    public init(videoName: String, videoType: String) {
        self.videoName = videoName
        self.videoType = videoType
    }
    
    public func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<SwiftUIVideoLayerView>) {
        
    }
    
    public func makeUIView(context: Context) -> UIView {
        return VideoLayerView(videoName: videoName, videoType: videoType)
    }
    
}
