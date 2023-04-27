//
//  Plants.swift
//  Gardener
//
//  Created by user231949 on 4/23/23.
//

import SwiftUI

struct PlantList: View {
    
    @ObservedObject var gardenersvm = GardenerViewModel()
    
    var body: some View {
       
        ZStack{
            Image("Background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(minWidth: 0,maxWidth: .infinity)
                .opacity(0.5)
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
                .navigationTitle("Plant List")
                .alert(isPresented: $gardenersvm.hasError, error: gardenersvm.error) {
                    Text("")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlantList()
    }
}
