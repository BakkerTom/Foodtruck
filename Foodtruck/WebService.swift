//
//  WebService.swift
//  Foodtruck
//
//  Created by Tom Bakker on 09/12/2016.
//  Copyright © 2016 bakker.co. All rights reserved.
//

import UIKit
import Alamofire

class WebService {

    class func retrieveCategories(completion: @escaping (([Category]) -> (Void))){
        let url = "https://fijnproevers.herokuapp.com/categories.json"
        
        Alamofire.request(url).responseJSON { handler in
            guard let responseJSON = handler.result.value as? [[String: Any]] else {
                completion([])
                return
            }
            
            let categories = parse(categoryData: responseJSON)
            completion(categories)
        }
    }
    
    class func parse(categoryData: [[String: Any]]) -> [Category]{
        var categories = [Category]()
        
        for data in categoryData {
            categories.append(Category(data: data))
        }
        
        return categories
        
    }
}
