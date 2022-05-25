//
//  configuracao.swift
//  PrimeiroAPPP
//
//  Created by Thaynara da Silva Andrade on 19/05/22.
//


import SwiftUI



struct configuracao: View {
    
    @State private var vibrateOnRing = true
    
    let selectedDisplayMode: NavigationBarItem.TitleDisplayMode = .large
    let navigationTitle: String = "Configurações"
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
            
                    Toggle("Dark mode", isOn: $vibrateOnRing)
                        .padding()
                  
                }
                    .navigationTitle(navigationTitle)
                .navigationBarTitleDisplayMode(selectedDisplayMode)
                Spacer()
            }
            
        }
        .navigationViewStyle(.stack)
    }
}

struct configuracao_Previews: PreviewProvider {
    static var previews: some View {
        configuracao()
    }
}
