//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Dhruv Patel on 08/07/26.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES
    let animal:Animal
    
    // MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                // TITLE
                Text(animal.name.uppercased())
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical,8)
                    .foregroundColor(.primary)
                    .background(Color.accentColor.frame(height:6)
                        .offset(y:24)
                    )
                // HEADLINE
                
                
                // GALLERY
                
                
                // FACTS
                
                
                // DESCRIPTION
                
                
                // MAP
                
                
                // LINK
                
                
            }//: VSTACK
            .navigationBarTitle("Learn about \(animal.name)",displayMode: .inline)
        }//: SCROLLVIEW
    }
}


// MARK: - Preview
struct AnimalDetailView_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        
        NavigationView {
            AnimalDetailView(animal: animals[0])
        }
        .previewDevice("iPhone 11 Pro")
    }
}

