//
//  detailViewController.swift
//  FinalProject
//
//  Created by CM Student on 4/16/18.
//  Copyright © 2018 Tayler Fitzsimmons. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {


    @IBOutlet var restaurantTextView: UITextView!
    
    @IBOutlet var imageView: UIImageView!
   
    var imagePass: String?
    
    var titlePass: String?
    
    var textViewPass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
        }
        if let imageText = textViewPass{
           restaurantTextView.text = imageText
        }
        
        self.title = titlePass
        
        self.view.backgroundColor=UIColor.black
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
