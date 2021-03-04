//
//  locationManager.swift
//  Map Hackwich
//
//  Created by Student on 3/1/21.
//

import Foundation
import CoreLocation

class locationManager: NSObject, CLLocationManagerDelegate, ObservableObject {
    
    var locationmanager = CLLocationManager()
    var geocoder = CLGeocoder()
    
    override init() {
        super.init()
        locationmanager.delegate = self
        locationmanager.requestWhenInUseAuthorization()
        locationmanager.startUpdatingLocation()
    }
}
