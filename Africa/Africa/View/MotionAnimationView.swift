//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Dhruv Patel on 20/07/26.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        GeometryReader {
            geometry  in
            ZStack {
                Circle()
                    .foregroundColor(.gray)
                    .opacity(0.15)
                    .frame(width: 256,height: 256,alignment: .center)
                    .position(x:geometry.size.width/2,
                              y:geometry.size.height/2)
                Text("Width: \(Int(geometry.size.width)) Height:\(Int(geometry.size.height))")
            }//: ZSTACK
        }//: GEOMETRY
    }
}

// MARK: - PREVIEW
struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
            .previewDevice("iPhone 11 Pro")
    }
}
