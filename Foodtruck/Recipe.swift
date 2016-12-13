//
//  Recipe.swift
//  Foodtruck
//
//  Created by Fhict on 09/12/16.
//  Copyright © 2016 bakker.co. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class Recipe{
    let id: Int?
    let title: String?
    let description: String?
    let imageUrl: String?
    
    init(title: String, description: String, recipeTitle: String, recipeDescription: String) {
        self.id = 0
        self.title = title
        self.description = description
        self.imageUrl = ""
    }
    
    init(data: [String: Any]){
        self.id = data["id"] as? Int
        self.title = data["title"] as? String
        self.description = data["description"] as? String
        self.imageUrl = data["image"] as? String
    }
}

