//
//  VideoListView.swift
//  Africa
//
//  Created by Dhruv Patel on 05/07/26.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - PROPERTIES
    
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelcted: item.id, videoTitle: item.name)) {
                        VideoListItem(video: item)
                            .padding(.vertical,8)
                    }
                } //: LOOP
            }//: LIST
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos",displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action : {
                        // Shuffle Videos
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }// : NAVIGATION
    }
}


struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView().previewDevice("iPhone 11 Pro")
    }
}
