//
//  MapView.swift
//  touristicPlaces
//
//  Created by Joaquin Yapp on 23-02-23.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: -35.675147, longitude: -71.542969)
        
        let span = MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 1)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
