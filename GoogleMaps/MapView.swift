//
//  MapView.swift
//  GoogleMaps
//
//  Created by Grace Njoroge on 15/01/2019.
//  Copyright © 2019 Grace. All rights reserved.
//

import UIKit
import MapKit


class MapView: UIView, MKMapViewDelegate {
    
     let regionRadius: CLLocationDistance = 1000
    
    let mapView: MKMapView = {
        let map = MKMapView()
        map.translatesAutoresizingMaskIntoConstraints = false
        return map
    }()
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()
    
    let searchButton: UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .black
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(named: "Flag.png"), for: .normal)
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(mapView)
        addSubview(searchButton)
        
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: self.topAnchor),
            mapView.leftAnchor.constraint(equalTo: self.leftAnchor),
            mapView.rightAnchor.constraint(equalTo: self.rightAnchor),
            mapView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
            ])
        
        NSLayoutConstraint.activate([
            searchButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -24),
            searchButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24)
            ])
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
