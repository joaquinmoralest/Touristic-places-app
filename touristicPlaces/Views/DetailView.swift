//
//  DetailView.swift
//  touristicPlaces
//
//  Created by Joaquin Yapp on 23-02-23.
//

import SwiftUI

struct DetailView: View {
    var location: Location
    @Binding var favorite: Bool
    
    var body: some View {
        ScrollView {
            VStack {
                Image("Chile")
                    .resizable()
                    .scaledToFit()
                Button {
                    favorite.toggle()
                } label: {
                    if favorite {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                    } else {
                        Image(systemName: "star")
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                }
                Text(location.name)
                    .font(.largeTitle)
                Text(location.region)
                    .font(.title2)
                Text(location.description!)
                    .padding()
                
                Spacer()
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(location: Location(id: 1, name: "Cerro San Cristobal", region: "Santiago", description: "El cerro San Cristóbal es parte de un conjunto de montañas, junto a los actuales cerros Chacarillas, su cerro hermano; Los Gemelos y La Pirámide, que forman parte del Parque Metropolitano de Santiago, el parque urbano más grande de Chile y uno de los más grandes del mundo,  con aproximadamente 722 hectáreas de extensión.", icon: Image(systemName: "mountain.2.fill"), favorite: true), favorite: .constant(false))
    }
}
