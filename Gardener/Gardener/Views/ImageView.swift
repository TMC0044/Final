//
//  ImageView.swift
//  Gardener
//
//  Created by user231949 on 4/24/23.
//

import SwiftUI

struct ImageCardView: View {
    
    var url : String
    
    var body: some View {
        AsyncImage(url: URL(string: url)) { image in
            image.resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 300, height: 300)
        } placeholder: {
            ProgressView()
        }
        
    }
}

struct ImageCardView_Previews: PreviewProvider {
    static var previews: some View {
        ImageCardView(url: "https://perenual.com/storage/species_image/2_abies_alba_pyramidalis/og/49255769768_df55596553_b.jpg")
    }
}
