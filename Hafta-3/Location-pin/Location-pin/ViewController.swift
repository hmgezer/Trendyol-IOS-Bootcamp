//
//  ViewController.swift
//  Location-pin
//
//  Created by Hüseyin Murat Gezer on 7.05.2021.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    let manager = CLLocationManager()
    let locationManager = CLLocationManager()
    let regionSize : Double = 12000
    var previousLocation : CLLocation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        locationServiceControl()
    }
    func locationServiceControl() {
        if CLLocationManager.locationServicesEnabled() {
            // konum servisi açıldı.
            settingsLocationManager()
            permissionControl()
        }else{
            // konum servisi açılmadı.
        }
    }
    func settingsLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    func permissionControl() {
        switch manager.authorizationStatus {
            case .authorizedWhenInUse:
                userFollow()
                break
            case .denied:
                break
            case .authorizedAlways:
                break
            case .notDetermined:
                locationManager.requestWhenInUseAuthorization()
                break
            case .restricted:
                break
            default:
                break
        }
    }
    func userFollow(){
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
        locationFocus()
        previousLocation = getLocationCenter(mapView: mapView)
    }
    
    func locationFocus() {
        if let location = locationManager.location?.coordinate {
            let region = MKCoordinateRegion.init(center: location, latitudinalMeters: regionSize, longitudinalMeters: regionSize)
            mapView.setRegion(region, animated: true)
        }
    }
    func getLocationCenter(mapView:MKMapView) -> CLLocation {
        let latitude = mapView.centerCoordinate.latitude
        let longitude = mapView.centerCoordinate.longitude
        return CLLocation(latitude: latitude, longitude: longitude)
    }
}

extension ViewController : CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // Konum güncellenirse tetikleriz.
        guard let location = locations.last else {return}
        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let region = MKCoordinateRegion.init(center: center, latitudinalMeters: regionSize, longitudinalMeters: regionSize)
        mapView.setRegion(region, animated: true)
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        // Konuma verilen izin değiştirilirse.
        permissionControl()
    }
}

extension ViewController : MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        let center = getLocationCenter(mapView: mapView)
        
        guard let previousLocation = self.previousLocation else {return}
        
        if center.distance(from: previousLocation) < 50 {return}
        self.previousLocation = center
        
        let geoCoder = CLGeocoder()
        
        geoCoder.reverseGeocodeLocation(center){(placeMarker, error) in
            if let _ = error {
                print("Hata meydana geldi..")
                return
            }
            guard let marker = placeMarker?.first else {return}
            
            let streetNumber = marker.subThoroughfare ?? "Yok"
            let streetName = marker.thoroughfare ?? "Yok"
            let countryName = marker.country ?? "Yok"
            let cityName = marker.administrativeArea ?? "Yok"
            let districtName = marker.locality ?? "Yok"
        
        
            DispatchQueue.main.async {
                self.addressLbl.text = "\(streetName) / \(districtName) / \(cityName) / \(countryName)"
                print("Sokak Numarası : \(streetNumber)")
                print("Sokak Adı : \(streetName)")
            }
        
        }
    }
}
 
