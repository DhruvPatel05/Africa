//
//  CenterModifier.swift
//  Africa
//
//  Created by Dhruv Patel on 23/07/26.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content:Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
