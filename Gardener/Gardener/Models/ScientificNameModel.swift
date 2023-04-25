//
//  ScientificNameModel.swift
//  Gardener
//
//  Created by user231949 on 4/25/23.
//

import Foundation

struct ScientificNameModel : Codable, Identifiable{
    var id = UUID()
    let scientificName : String
}
