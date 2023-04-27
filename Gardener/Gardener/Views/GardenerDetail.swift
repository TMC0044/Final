//
//  GardenerDetail.swift
//  Gardener
//
//  Created by user231949 on 4/24/23.
//

import SwiftUI

struct GardenerDetail: View {
    
    var gardener : GardenerModel
    
    var body: some View {
            ScrollView {
                VStack(alignment: .center, spacing: 20 ) {
                    Text(gardener.common_name)
                        .font(.system(.title))
                        .padding(.horizontal)
                    ImageCardView(url: gardener.default_image.regular_url)
                    VStack {
                        Text("Scientific Name: ")
                            .font(.system(size: 20))
                        HStack {
                            ForEach(gardener.scientific_name, id: \.self) { name in
                                TextDisplay(word: name)
                            }
                        }
                    }
                    VStack {
                        Text("Other Know Names: ")
                            .font(.system(size: 18))
                        HStack {
                            ForEach(gardener.other_name, id: \.self) { name in
                                TextDisplay(word: name)
                            }
                        }
                    }
                    VStack{
                        Text("Plants Cycle: ")
                        Text(gardener.cycle)
                            .font(.system(size: 18))
                            .padding(.horizontal)
                    }
                    VStack{
                        Text("Plants Watering Cycle: ")
                        Text(gardener.watering)
                            .font(.system(size: 18))
                            .padding(.horizontal)
                    }
                    VStack{
                        Text("Sunlight needed for plant")
                        HStack {
                            ForEach(gardener.sunlight, id: \.self) { name in
                                TextDisplay(word: name)
                            }
                        }
                    }
                }
            }
    }
        
}
    
