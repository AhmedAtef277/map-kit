//
//  ViewController.swift
//  mapApp
//
//  Created by mac on 10/03/2022.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapview: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let location = CLLocation(latitude:  30.033333, longitude: 31.233334)
        let distance = CLLocationDistance(1000)
        setMap(location: location, distance: distance)
        addPin()
        
    }
    func setMap(location : CLLocation , distance : CLLocationDistance) {
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: distance, longitudinalMeters: 200)
        mapview.setRegion(region , animated: true)
        
        let cameraBoundary = MKMapView.CameraBoundary(coordinateRegion: region)
        mapview.setCameraBoundary(cameraBoundary , animated: true)
        
        let cameraZoom = MKMapView.CameraZoomRange(minCenterCoordinateDistance: 100, maxCenterCoordinateDistance: 1000)
        mapview.setCameraZoomRange(cameraZoom , animated: true)
        
        
        
        
    }
    func addPin() {
        let pin = MKPointAnnotation()
        pin.coordinate = CLLocationCoordinate2D(latitude: 30.033333, longitude: 31.233334)
        pin.title = "My Location"
        
        mapview.addAnnotation(pin)
    }

}

