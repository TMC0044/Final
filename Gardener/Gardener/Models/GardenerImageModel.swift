//
//  GardenerImageModel.swift
//  Gardener
//
//  Created by user231949 on 4/24/23.
//

import Foundation



struct GardenerImageModel : Codable, Identifiable {
    let id = UUID()
    let license : Int
    let license_name : String
    let license_url : String
    let original_url : String
    let regular_url : String
    let medium_url : String
    let small_url : String
    let thumbnail : String
}
