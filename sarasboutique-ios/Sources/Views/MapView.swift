//
//  MapView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-22.
//

import SwiftUI
import MapKit

struct MapView: View {
    @StateObject private var locationManager = LocationManager()
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194), // Default to San Francisco
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region, showsUserLocation: true)
                .onChange(of: locationManager.location) { newLocation in
                    if let newLocation = newLocation {
                        region.center = newLocation.coordinate
                    }
                }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text("Current Location: \(region.center.latitude), \(region.center.longitude)")
                        .padding()
                        .background(Color.white.opacity(0.7))
                        .cornerRadius(10)
                        .padding()
                }
            }
        }
        .onAppear {
            if let location = locationManager.location {
                region.center = location.coordinate
            }
        }
    }
}


#Preview {
    MapView()
}
