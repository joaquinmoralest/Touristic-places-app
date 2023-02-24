//
//  RowView.swift
//  touristicPlaces
//
//  Created by Joaquin Yapp on 23-02-23.
//

import SwiftUI

struct RowView: View {
    var location: Location
    
    var body: some View {
        HStack {
            location.icon
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 35, height: 35)
                .padding(10)
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.title2)
                Text(location.region)
            }
            
            Spacer()
            
            if location.favorite {
                Image(systemName: "star.fill")
                    .foregroundColor(Color.yellow)
            } else {
                Image(systemName: "star")
            }
            
        }
        .frame(maxWidth: .infinity)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(location: Location(id: 1, name: "Cerro San Cristobal", region: "Santiago", icon: Image(systemName: "mountain.2.fill"), favorite: true))
    }
}
