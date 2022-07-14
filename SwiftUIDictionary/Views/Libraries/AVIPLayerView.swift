//
//  AVIPLayerView.swift
//  SwiftUIDictionary
//
//  Created by Pablo Carmona Esparza on 22/07/21.
//

import SwiftUI
import AVKit

struct AVIPLayerView: View {
    
    @State var player = AVPlayer()
    var videoUrl: String = "https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4"

    
    var body: some View {
        VideoPlayer(player: player)
            .onAppear() {
                player = AVPlayer(url: URL(string: videoUrl)!)
            }
            .ignoresSafeArea()
    }
}

struct AVIPLayerView_Previews: PreviewProvider {
    static var previews: some View {
        AVIPLayerView()
    }
}
