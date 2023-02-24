//
//  ListView.swift
//  touristicPlaces
//
//  Created by Joaquin Yapp on 23-02-23.
//

import SwiftUI

final class LocationModelData: ObservableObject {
    @Published var locations = [
        Location(
            id: 0,
            name: "Cerro San Cristobal",
            region: "Santiago",
            description: "El cerro San Cristóbal es parte de un conjunto de montañas, junto a los actuales cerros Chacarillas, su cerro hermano; Los Gemelos y La Pirámide, que forman parte del Parque Metropolitano de Santiago, el parque urbano más grande de Chile y uno de los más grandes del mundo,  con aproximadamente 722 hectáreas de extensión.",
            icon: Image(systemName: "mountain.2.fill"),
            favorite: true
        ),
        Location(
            id: 1,
            name: "Pueblo los Dominicos",
            region: "Las Condes",
            description: "Este verdadero pueblito a escala alberga a un gran número de artesanos y artistas que venden y elaboran sus creaciones ante el público. Las obras, completamente realizadas a mano, representan a cada una de las regiones de este extenso país. Actualmente y bajo la administración de la Corporación Cultural de la Municipalidad de Las Condes, se ha implementado un proyecto de desarrollo que involucra tanto la artesanía como la historia, el teatro, las artes visuales, música, gastronomía y todo lo relacionado con la difusión de nuestras tradiciones. De tal forma, el pequeño pueblito que naciera albergando a unos cuantos artesanos, hoy se conoce como Centro Artesanal Los Dominicos y se constituye en uno de los lugares de mayor tradición del país y visita obligatoria de extranjeros y turistas.",
            icon: Image(systemName: "building.columns.fill"),
            favorite: false
        ),
        Location(
            id: 2,
            name: "Glaciar El Morado",
            region: "San Jose de Maipo",
            description: "El Monumento Natural El Morado es una unidad de alta montaña, que esta sobre los 1750 msnm, a un costado de la localidad de Baños Morales, en la comuna de San José de Maipo. \n\nEn su interior se preserva un proceso geológico de movimiento y depósito de materiales de un glacial (morrenas), desde su inicio hasta su término. Por lo mismo posee la apariencia de un cajón cordillerano con forma de u, franqueado por tres de sus lados, por altas montañas.",
            icon: Image(systemName: "mountain.2.fill"),
            favorite: false
        ),
        Location(
            id: 3,
            name: "Parque Nacional Torres del Paine",
            region: "Torres del Paine",
            icon: Image(systemName: "mountain.2.fill"),
            favorite: true
        ),
        Location(
            id: 4,
            name: "Buin Zoo",
            region: "Buin",
            icon: Image(systemName: "pawprint.fill"),
            favorite: false
        ),
        Location(
            id: 5,
            name: "Parque Mahuida",
            region: "La Reina",
            icon: Image(systemName: "tree.fill"),
            favorite: false
        ),
        Location(
            id: 6,
            name: "Paque Quinta Normal",
            region: "Quinta Normal",
            icon: Image(systemName: "tree.fill"),
            favorite: false
        ),
        Location(
            id: 7,
            name: "Cascada de las Animas",
            region: "San Jose de Maipo",
            icon: Image(systemName: "water.waves"),
            favorite: true
        ),
        Location(
            id: 8,
            name: "Volcán Villarica",
            region: "Villarica",
            icon: Image(systemName: "mountain.2.fill"),
            favorite: false
        ),
        Location(
            id: 9,
            name: "Lago Caburgua",
            region: "Pucón",
            icon: Image(systemName: "water.waves"),
            favorite: true
        ),
        Location(
            id: 10,
            name: "Desierto Florido",
            region: "Atacama",
            icon: Image(systemName: "sun.and.horizon.fill"),
            favorite: true
        ),
    ]
}

struct ListView: View {
    @EnvironmentObject var locationModelData: LocationModelData
    @State private var showFavorite = false
    
    private var filteredLocations: [Location] {
        return locationModelData.locations.filter { location in
            return !showFavorite || location.favorite
        }
    }
    
    var body: some View {
        VStack {
            Toggle(isOn: $showFavorite) {
                Text("Mostrar favoritos")
            }.padding()
            List(filteredLocations, id: \.id) { location in
                NavigationLink(destination: DetailView(location: location, favorite: $locationModelData.locations[location.id].favorite)) {
                    RowView(location: location)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Explorar")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(LocationModelData())
    }
}
