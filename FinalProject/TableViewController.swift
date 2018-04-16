//
//  TableViewController.swift
//  FinalProject
//
//  Created by CM Student on 4/9/18.
//  Copyright © 2018 Tayler Fitzsimmons. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    @IBOutlet var tableView: UITableView!
   
    var haleiwaRestaurantArray = ["Cholo's", "Stormy's", "Kono's", "Storto's", "Haleiwa Joe's", "Elephant Shack"]
    
    var restaurantImageData = [String]()
    
    var restaurantTitleData = [String]()
    
    var restaurantTextViewData = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self

        // Do any additional setup after loading the view.
        
         self.navigationItem.title = "Haleiwa Eats"
        
        let path = Bundle.main.path(forResource: "eatsList", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
      restaurantImageData = dict!.object(forKey:"restaurantImages") as! [String]

        restaurantTitleData = dict!.object(forKey: "restaurantNames") as! [String]
        
        restaurantTextViewData = dict!.object(forKey: "restaurantDescriptions") as! [String]
        
       self.view.backgroundColor=UIColor.red

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
      return "My Favorite Restaurants in Haleiwa"
    }
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return haleiwaRestaurantArray.count
    
    }

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
    let text = haleiwaRestaurantArray[indexPath.row]
    cell.textLabel?.text = text
    return cell
    
}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! detailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
            s1.titlePass = restaurantTitleData[imageIndex!]
            s1.textViewPass = restaurantTextViewData[imageIndex!]
            
            
        }
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
