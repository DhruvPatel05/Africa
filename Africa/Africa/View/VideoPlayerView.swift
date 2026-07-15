//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Dhruv Patel on 12/07/26.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - PROPERTIES
    var videoSelcted: String
    var videoTitle: String
    // MARK: - BODY
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelcted, fileFormat: "mp4")) {
                Text(videoTitle)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32,height:32)
                    .padding(.top,6)
                    .padding(.horizontal,8),alignment: .topLeading
                    )
        }//: VSTACk
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle,displayMode: .inline)
    }
}


// MARK: - PREVIEW
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView(videoSelcted: "lion", videoTitle: "Lion")
    }
}

