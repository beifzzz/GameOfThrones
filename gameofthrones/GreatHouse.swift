//
//  GreatHouse.swift
//  gameofthrones
//
//  Created by Arystan on 01.12.2024.
//

import Foundation
import SwiftyJSON


struct GreatHouse {
    
    var name = ""
    var region = ""
    var location = ""
    var picture = ""
    
    init(json: JSON) {
        if let item = json["name"].string {
            name = item
        }
        if let item = json["region"].string {
            region = item
        }
        if let item = json["location"].string {
            location = item
        }
        if let item = json["picture"].string {
            picture = item
        }
    }
}
