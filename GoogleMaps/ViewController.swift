//
//  ViewController.swift
//  GoogleMaps
//
//  Created by Grace Njoroge on 15/01/2019.
//  Copyright © 2019 Grace. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    var mapView = MapView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupMapView()
        
        //setting initial location in Honolulu
        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
        mapView.centerMapOnLocation(location: initialLocation)
       
        
    }
    
    func setupMapView() {
        view.addSubview(mapView)
        
        mapView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: view.topAnchor),
            mapView.leftAnchor.constraint(equalTo: view.leftAnchor),
            mapView.rightAnchor.constraint(equalTo: view.rightAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
    }
    



}

