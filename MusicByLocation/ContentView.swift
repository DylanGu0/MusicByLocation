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
        Form {
            Section {
                    Text("\(locationHandler.lastKnownLocality), \(locationHandler.lastKnownCountry)")
                        .padding()
                        .frame(width: 350, alignment: .center)
            }

            Button("Find music", action: {
                locationHandler.requestLocation()
            })
                .frame(width: 350, alignment: .center)
                .onAppear(perform: {
                    locationHandler.requestAuthorisation()
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
