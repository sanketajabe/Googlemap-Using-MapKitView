//
//  ViewController.swift
//  mapView
//
//  Created by Apple on 07/11/22.
//

import UIKit
import MapKit
class ViewController: UIViewController {
    let location = CLLocation(latitude: 18.5204, longitude: 73.8567)
    let regionRadius = 1000
    @IBOutlet var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        centreMap(location : location)
    }
    func centreMap(location : CLLocation){
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
        mapView.setRegion(region, animated: true)
    }

}

