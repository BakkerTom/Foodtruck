//
//  Category.swift
//  Foodtruck
//
//  Created by Tom Bakker on 09/12/2016.
//  Copyright © 2016 bakker.co. All rights reserved.
//

import UIKit

class Category{
    let title: String?
    let description: String?
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
    
    init(data: [String: Any]){
        self.title = data["title"] as? String
        self.description = data["description"] as? String
    }
}
