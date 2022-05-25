//
//  Notas.swift
//  PrimeiroAPPP
//
//  Created by Thaynara da Silva Andrade on 18/05/22.
//

import SwiftUI



struct Notas: View {
    
    @State private var inputnote = "Digite aqui ✍🏼"
    let selectedDisplayMode: NavigationBarItem.TitleDisplayMode = .large
    let navigationTitle: String = "Anotações"
    
    var body: some View {
        NavigationView {
            VStack {

                TextEditor(text: $inputnote)
                    .padding()
                    .foregroundColor(Color.gray)
                
                    
                

            }
                .navigationTitle(navigationTitle)
                .navigationBarTitleDisplayMode(selectedDisplayMode)
        }
        .navigationViewStyle(.stack)
    }
}

struct Notas_Previews: PreviewProvider {
    static var previews: some View {
        Notas()
    }
}
