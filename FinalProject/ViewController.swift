//
//  ViewController.swift
//  FinalProject
//
//  Created by CM Student on 4/2/18.
//  Copyright © 2018 Tayler Fitzsimmons. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.589246 , longitude: -158.103004)
    
    let regionRadius: CLLocationDistance = 800
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
       self.navigationItem.title = "Haleiwa"
        
        centerMapOnLocation(location: initialLocation)
        
        let restaurantOne = Restaurant(title: "Cholo's", type: "Mexican", coordinate: CLLocationCoordinate2D(latitude: 21.585800 , longitude: -158.102605))
        mapView.addAnnotation(restaurantOne)
        
        let restaurantTwo = Restaurant(title: "Stormy's", type: "Comfort", coordinate: CLLocationCoordinate2D(latitude:  21.588751 , longitude: -158.103318))
        mapView.addAnnotation(restaurantTwo)
        
        let restaurantThree = Restaurant(title: "Kono's", type: "Comfort", coordinate: CLLocationCoordinate2D(latitude: 21.585629 , longitude: -158.103416))
        mapView.addAnnotation(restaurantThree)
        
        let restaurantFour = Restaurant(title: "Storto's", type: "Sandwhiches", coordinate: CLLocationCoordinate2D(latitude: 21.587615 , longitude: -158.103294))
        mapView.addAnnotation(restaurantFour)
        
        let restaurantFive = Restaurant(title: "Haleiwa Joe's", type: "Seafood", coordinate: CLLocationCoordinate2D(latitude: 21.592962 , longitude: -158.103754))
        mapView.addAnnotation(restaurantFive)
        
        let restaurantSix = Restaurant(title: "Elephant Shack", type: "Thai", coordinate: CLLocationCoordinate2D(latitude: 21.589121 , longitude: -158.103258))
        mapView.addAnnotation(restaurantSix)
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius,regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
 
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

