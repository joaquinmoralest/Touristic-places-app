//
//  MainView.swift
//  touristicPlaces
//
//  Created by Joaquin Yapp on 23-02-23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            NavigationView {
                ScrollView {
                    VStack {
                        MapView().frame(height: 400)
                        ImageView().offset(y: -80)
                    }
                }
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Inicio")
            }
            
            NavigationView {
                ListView().environmentObject(LocationModelData())
            }
            .tabItem {
                Image(systemName: "airplane")
                Text("Descubre")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
