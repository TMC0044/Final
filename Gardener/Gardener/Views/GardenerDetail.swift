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
            VStack(alignment: .leading, spacing: 10) {
                Text(gardener.common_name)
                    .font(.system(size: 20))
                    .padding(.horizontal)
                ForEach(gardener.scientific_name) { name in
                    Text(name.scientificName)
                }
                //.font(.system(size: 15))
                //.padding(.horizontal)
                ForEach(gardener.other_name) { name in
                    Text(name.otherName)
                }
                //.font(.system(size: 15))
                //.padding(.horizontal)
                Text(gardener.cycle)
                    .font(.system(size: 15))
                    .padding(.horizontal)
                Text(gardener.watering)
                    .font(.system(size: 15))
                    .padding(.horizontal)
                Text(gardener.sunlight)
                //.font(.system(size: 15))
                //.padding(.horizontal)
                //        ImageCardView(url: regular_url)
                
            }
        }
    }
}
