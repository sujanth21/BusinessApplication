//
//  ContactUsViewController.swift
//  BusinessApplication
//
//  Created by Sujanth Sebamalaithasan on 17/9/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit
import MapKit

class ContactUsViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let latitude = -37.755479
    let longitude = 144.996658
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let span = MKCoordinateSpanMake(0.005, 0.005)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span: span)
        
        mapView.setRegion(region, animated: true)
        
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        let pinAnnotation = MKPointAnnotation()
        pinAnnotation.coordinate = pinLocation
        pinAnnotation.title = "My Company"
        pinAnnotation.subtitle = "45 Hutton Street, Thornbury, Australia."
        self.mapView.addAnnotation(pinAnnotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
