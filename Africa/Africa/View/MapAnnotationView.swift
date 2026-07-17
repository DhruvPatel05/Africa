//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Dhruv Patel on 17/07/26.
//

import SwiftUI


struct MapAnnotationView: View {
    //MARK: - PROPERTIES
    var location: NationalParkLoaction
    
    
    //MARK: - BODY
    var body: some View {
        Image(location.image)
            .resizable()
            .scaledToFit()
            .frame(width: 48,height: 48,alignment: .center)
            .clipShape(Circle())
    } //:ZSTACK
}

//MARK: - PREVIEW

struct MAPAnnotationView_Previews: PreviewProvider {
    static var locations:[NationalParkLoaction] = Bundle.main.decode("locations.json")
    static var previews: some View {
        MapAnnotationView(location: locations[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
