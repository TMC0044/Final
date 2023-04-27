//
//  CommonNameModel.swift
//  Gardener
//
//  Created by user231949 on 4/25/23.
//

import Foundation

struct OtherNameModel : Codable, Identifiable{
    var id = UUID()
    let otherName : [String]
}
