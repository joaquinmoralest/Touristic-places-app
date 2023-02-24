//
//  SwiftUIView.swift
//  touristicPlaces
//
//  Created by Joaquin Yapp on 23-02-23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("Chile")
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 4))
                .shadow(color: Color.gray, radius: 5)
            Text("Chile")
                .font(.largeTitle)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
