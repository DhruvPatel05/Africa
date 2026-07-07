//
//  ContentView.swift
//  Africa
//
//  Created by Dhruv Patel on 02/07/26.
//

import SwiftUI

struct ContentView: View {
   // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List() {
                CoverImageView()
                    .frame(height:300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }//: LIST
            .navigationBarTitle("Africa",displayMode: .large)
        }//: NAVIGATION
    }

   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 11 Pro")
    }
}
