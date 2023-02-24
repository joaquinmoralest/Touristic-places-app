//
//  ContentView.swift
//  touristicPlaces
//
//  Created by Joaquin Yapp on 21-02-23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Hello, world! Bienvenidos al tutorial")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .background(Color.gray)
                .padding()
            
            Spacer()
            
            ZStack {
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.gray)
                    .padding(20)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.green)
                    .padding(40)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.blue)
                    .padding(60)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.yellow)
                    .padding(80)
                    
            }
            
            HStack {
                Text("Otro texto")
                    .padding()
                    .background(Color.gray)
                
                Spacer()
                
                Text("Otro texto")
                    .padding()
                    .background(Color.gray)
            }
            
        }
        .background(Color.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
