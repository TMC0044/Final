//
//  GardenerModel.swift
//  Gardener
//
//  Created by user231949 on 4/23/23.
//

import Foundation

struct GardenerResults : Codable {
    let data : [GardenerModel]
    let to : Int
    let per_page : Int
    let current_page : Int
    let from : Int
    let last_page : Int
    let total: Int
}
struct GardenerModel : Codable, Identifiable {
    let id : Int
    let common_name : String
    let scientific_name : [ScientificNameModel]
    let other_name : [OtherNameModel]
    let cycle : String
    let watering : String
    let sunlight : String
    let default_image : [GardenerImageModel]
}
