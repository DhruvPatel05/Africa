//
//  VideoModel.swift
//  Africa
//
//  Created by Dhruv Patel on 09/07/26.
//

import Foundation

struct Video: Codable, Identifiable {
    
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
    
    
}
