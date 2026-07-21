//
//  GalleryView.swift
//  Africa
//
//  Created by Dhruv Patel on 06/07/26.
//

import SwiftUI


struct GalleryView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Gallery")
        }// :SCROLL
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

// MARK: - PREVIEW

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView().previewDevice("iPhone 11 Pro")
    }
}
