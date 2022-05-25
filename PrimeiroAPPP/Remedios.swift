//
//  Remedios.swift
//  PrimeiroAPPP
//
//  Created by Thaynara da Silva Andrade on 13/05/22.
//

import SwiftUI



struct Remedios: View {
    
    let selectedDisplayMode: NavigationBarItem.TitleDisplayMode = .large
    let navigationTitle: String = "Medicamentos"
    @State private var isExpanded: Bool = false
    @State private var isExpanded1: Bool = false
    @State private var isExpanded2: Bool = false
    @State private var isExpanded3: Bool = false
    @State private var remediosusuario1 = "Clozapina"
    @State private var remediosusuario2 = "Fernegan"
    @State private var remediosusuario3 = "Carbonato de lítio"
    @State private var remediosusuario4 = "Risperidona"
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    DisclosureGroup(remediosusuario1, isExpanded: $isExpanded.animation(),
                        content: {
                            Text("100mg \n\n 8h - 2 Comprimidos \n 21h - 3 Comprimidos")
                            .padding()
                            Image("Clozapina")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            
                
                        
                        }
                   )
                    
                    DisclosureGroup(remediosusuario2, isExpanded: $isExpanded1.animation(),
                        content: {
                            Text("25mg \n\n 21h - 1 Comprimido")
                            .padding()
                            Image("Fernegan")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                
                        
                        }
                   )
                    
                    DisclosureGroup(remediosusuario3, isExpanded: $isExpanded2.animation(),
                        content: {
                        Text("25mg \n\n 21h - 1 Comprimido")
                        .padding()
                        Image("imagem")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        
                
                        
                        }
                   )
                    
                    DisclosureGroup(remediosusuario4, isExpanded: $isExpanded3.animation(),
                        content: {
                            Text("3mg \n\n⏰ 21h (1 Comprimido)")
                            .padding()
                            Image("risperidona")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        
                
                        
                        }
                   )
                }
        
                
                    
                    
                
                
                    
                

                                    
                                    }
                .navigationTitle(navigationTitle)
                .navigationBarTitleDisplayMode(selectedDisplayMode)
        }
        .navigationViewStyle(.stack)
    }
}



struct Remedios_Previews: PreviewProvider {
    static var previews: some View {
        Remedios()
    }
}
                    
