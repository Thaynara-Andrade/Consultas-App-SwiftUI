//
//  ContentView.swift
//  PrimeiroAPPP
//
//  Created by Thaynara da Silva Andrade on 11/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            Home()
                .tabItem{
                    Image(systemName: "house.fill")
                        .foregroundColor(Color("AccentColor"))    .font(.system(size:22))
               }
           Remedios()
                .tabItem{
                    Image(systemName: "pills.fill")
                        .foregroundColor(Color.pink)
                }
            Notas()
               .tabItem{
                    Image(systemName: "heart.text.square.fill")
                        .foregroundColor(Color.pink)
                }
             configuracao()
                .tabItem{
                    Image(systemName: "gearshape.fill")
                        .foregroundColor(Color.pink)
                }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
        
    }
}

