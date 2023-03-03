//
//  ContentView.swift
//  MusicByLocation
//
//  Created by Guo, Dylan (Coll) on 03/03/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var locationHandler = LocationHandler()
    
    var body: some View {
        VStack {
            Text("\(locationHandler.lastKnownLocality), \(locationHandler.lastKnownCountry)")
                .padding()
            Button("Find music", action: {
                locationHandler.requestLocation()
            })
        }
        .onAppear(perform: {
            locationHandler.requestAuthorisation()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
