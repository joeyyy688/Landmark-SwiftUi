//
//  ContentView.swift
//  Landmarks
//
//  Created by Joseph on 6/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView().frame(height: 300)
            
            CircleImage().offset(y: -130).padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock").font(.title).foregroundColor(.purple)
                HStack() {
                    Text("Joshua Tree")
                    Spacer()
                    Text("California Park Tree")
                }
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }.padding()
            
            Spacer()
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
