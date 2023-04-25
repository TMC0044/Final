//
//  Plants.swift
//  Gardener
//
//  Created by user231949 on 4/23/23.
//

import SwiftUI

struct Gardener: View {
    
    @ObservedObject var gardenersvm = GardenerViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(gardenersvm.gardenerData) { gardener in
                    NavigationLink {
                        GardenerDetail(gardener: gardener)
                    } label: {
                        Text(gardener.common_name)
                    }
                }
                
            }
            .task {
                await gardenersvm.fetchData()
            }
            .listStyle(.grouped)
            .navigationTitle("Gardener")
            .alert(isPresented: $gardenersvm.hasError, error: gardenersvm.error) {
                Text("")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Gardener()
    }
}
