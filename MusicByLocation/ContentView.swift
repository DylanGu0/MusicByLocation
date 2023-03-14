//
//  ContentView.swift
//  MusicByLocation
//
//  Created by Guo, Dylan (Coll) on 03/03/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var state = StateController()
    
    var body: some View {
        Form {
            Section {
                    Text("\(state.artistsByLocation)")
                        .padding()
                        .frame(width: 300, alignment: .center)
            }

            Button("Find music", action: {
                state.findMusic()
            })
                .frame(width: 350, alignment: .center)
                .onAppear(perform: {
                    state.requestAccessToLocationData()
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
