//
//  MapView.swift
//  JetCafe
//
//  Created by Asim Seferli on 07.04.24.
//

import SwiftUI
import MapKit


struct LocationButtonTestView: View {
       @Namespace var mapScope
       var body: some View {
           VStack {
               Map(scope: mapScope)
               MapUserLocationButton(scope: mapScope)
           }
           .mapScope(mapScope)
       }
   }
struct MapView: View {
    @State private var showModal = false
    @StateObject var manager = LocationManager()
    @State private var selectedResult: MKMapItem?
     @State private var route: MKRoute?
     
     private let startingPoint = CLLocationCoordinate2D(
         latitude: 40.4093,
         longitude: 49.7671
     )
     
     private let destinationCoordinates = CLLocationCoordinate2D(
         latitude: 40.4093,
         longitude: 49.8671
     )
    var body: some View {
            ZStack {
               
                Map(selection: $selectedResult
                ) {
                    Marker("Home", coordinate: self.startingPoint)
                    if let route {
                                  MapPolyline(route)
                                      .stroke(.blue, lineWidth: 5)
                              }
                    Annotation("Cafe Late", coordinate: .weequahicPark) {
                        ZStack {
                            UnevenRoundedRectangle(cornerRadii: .init(
                                                                                topLeading: 50,
                                                                                bottomLeading: 0,
                                                                                bottomTrailing: 50.0,
                                                                                topTrailing: 50.0),
                                                                                style: .continuous)
                                
                                .fill(Color.white)
                            
                            Button {
                                showModal.toggle()
                            } label: {
                                Text("☕️")
                                    .padding(5)
                            }

                        }
                        
                    }
                }
                .onChange(of: selectedResult){
                            getDirections()
                        }
                        .onAppear {
                            self.selectedResult = MKMapItem(placemark: MKPlacemark(coordinate: self.destinationCoordinates))
                        }
                .mapControls {
                    MapCompass()
                }
                .sheet(isPresented: $showModal) {
                    MapItemView()
                        .presentationDetents([.height(313)])
                }
              
            }
        
        }
    func getDirections() {
         self.route = nil
         
         guard let selectedResult else { return }
         
         let request = MKDirections.Request()
         request.source = MKMapItem(placemark: MKPlacemark(coordinate: self.startingPoint))
         request.destination = self.selectedResult
         
         Task {
             let directions = MKDirections(request: request)
             let response = try? await directions.calculate()
             route = response?.routes.first
         }
     }

    }

 
#Preview {
    MapView()
}
