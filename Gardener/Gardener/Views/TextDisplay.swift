//
//  SwiftUIView.swift
//  Gardener
//
//  Created by user231949 on 4/25/23.
//

import SwiftUI

struct TextDisplay: View {
    var word : String
    
    var body: some View {
        Text(word)
            .font(.system(size: 17))
            .padding(.horizontal)    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TextDisplay(word: "Hello")
    }
}
