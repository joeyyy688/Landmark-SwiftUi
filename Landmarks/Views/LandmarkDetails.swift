//
//  LandmarkDetails.swift
//  Landmarks
//
//  Created by Joseph on 6/15/23.
//

import SwiftUI

struct LandmarkDetails: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView{
            MapView(coordinate: landmark.locationCoordinated).frame(height: 300)
            
            CircleImage(image: landmark.image).offset(y: -130).padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name).font(.title)
                
                HStack() {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }.font(.subheadline).foregroundColor(.gray)
                
                Divider()
                
                Text("About \(landmark.name)").font(.title2)
                
                Text(landmark.description)
            }.padding()
            
        }.navigationTitle(landmark.name).navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetails_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetails(landmark: landmarks[1])
    }
}
