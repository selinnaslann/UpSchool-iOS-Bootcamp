//
//  ViewController.swift
//  LokasyonKullanimi
//
//  Created by Selin Aslan on 8.05.2022.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var boylamLabel: UILabel!
    @IBOutlet weak var enlemLabel: UILabel!
    @IBOutlet weak var map: MKMapView!
    
    var lm = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lm.desiredAccuracy = kCLLocationAccuracyBest
        lm.delegate = self
        lm.requestWhenInUseAuthorization()
        lm.startUpdatingLocation()
        
        //41.0370014,28.9763369
        let konum = CLLocationCoordinate2D(latitude: 41.0370014, longitude: 28.9763369)
        let zoom = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let bolge = MKCoordinateRegion(center: konum, span: zoom)
        map.setRegion(bolge, animated: true)
        
        let pin = MKPointAnnotation()
        pin.coordinate = konum
        pin.title = "Taksim"
        pin.subtitle = "Meydan"
        map.addAnnotation(pin)
        
        
    }


}

extension ViewController : CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let konum = locations[locations.count-1]
        enlemLabel.text = "Enlem : \(konum.coordinate.latitude)"
        boylamLabel.text = "Boylam : \(konum.coordinate.longitude)"
    }
}
