//
//  TableViewController.swift
//  FinalProject
//
//  Created by CM Student on 4/9/18.
//  Copyright © 2018 Tayler Fitzsimmons. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
    //restauramnt image data
    var restaurantImageData = [String]()
    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
         self.navigationItem.title = "Haleiwa Eats"
        
        let path = Bundle.main.path(forResource: "Eats List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
      restaurantImageData = dict!.object(forKey: "restaurantImages") as! [String]
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        func numberOfSections(in tableView: UITableViewCell) -> Int {
            
            return 1;
            
        }
   }
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -Int {

    }

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
       tableView.deselectRow(at: indexPath as IndexPath, animated: true)
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
