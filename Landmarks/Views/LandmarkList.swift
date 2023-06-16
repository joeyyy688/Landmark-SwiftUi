//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Joseph on 6/15/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks) { landmark in
                NavigationLink{
                    LandmarkDetails(landmark: landmark)
                }label: {
                    LandmarkRow(landmark: landmark)
                }
                
            }.navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
