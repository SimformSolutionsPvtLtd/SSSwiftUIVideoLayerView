//
//  ContentView.swift
//  SSSwiftUIGIFView
//
//  Created by Simform Solutions on 07/01/20.
//  Copyright © 2020 Simform. All rights reserved.
//

import SwiftUI
import SSSwiftUIVideoLayerView

struct ContentView: View {
    var body: some View {
        SwiftUIVideoLayerView(videoName: "simformsolutions", videoType: "mp4").frame(width: 300, height: 300, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
