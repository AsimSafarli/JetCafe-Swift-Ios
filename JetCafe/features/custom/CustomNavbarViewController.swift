//
//  CustomNavbarViewController.swift
//  JetCafe
//
//  Created by Asim Seferli on 07.04.24.
//

import SwiftUI

struct CustomNavbarViewController: View {
    var body: some View {
        TabView{
            HomeViewController()
                        .tabItem{
                            Image(systemName: "house")
                            
                        }
            SearchView()
                        .tabItem{
                            Image(systemName: "magnifyingglass")
                        }
            MapView()
                        .tabItem{
                            
                            Image(systemName: "location.fill")
                        }
                    
            NotficationView()
                        .tabItem{
                            Image(systemName: "bell")
                        }
            Text("Profile")
                        .tabItem{
                            Image(systemName: "person.crop.circle")
                        }
                }
        .accentColor(.color)
    }
}

#Preview {
    CustomNavbarViewController()
}
