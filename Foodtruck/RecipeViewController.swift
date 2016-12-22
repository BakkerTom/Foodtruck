//
//  RecipeViewController.swift
//  Foodtruck
//
//  Created by Tom Bakker on 14/12/2016.
//  Copyright © 2016 bakker.co. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    var recipe: Recipe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if recipe != nil {
            
            let requestUrl = URL(string: (recipe?.url)!)
            let request = URLRequest(url: requestUrl!)
            webView.loadRequest(request)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
