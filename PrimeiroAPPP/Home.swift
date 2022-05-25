//
//  Home.swift
//  PrimeiroAPPP
//
//  Created by Thaynara da Silva Andrade on 13/05/22.
//

import SwiftUI

struct Home: View {
    let columnCount: Int = 2
    let gridSpacing: CGFloat = -10.0
    
    var body: some View {
        ZStack{
            Color ("BackgroundColor").ignoresSafeArea()
            
            VStack {
                
                // TODO: Componentizar o Header e substituir esse Rectangle aqui
                Rectangle()
                    .foregroundColor(Color("BackgroundColor"))
                    .shadow(color: .gray.opacity(4), radius: 0.5, x: 1, y: 1)
                    .frame(height:140)
                    .scaledToFill()
                
                
                    .overlay {
                        RoundedRectangle (cornerRadius: 10)
                            .foregroundColor(Color("BackgroundColor"))
                            .padding()
                            .overlay {
                                HStack{
                                    
                                    Image(systemName: "person.circle.fill")
                                        .font(.system(size:60))
                                        .foregroundColor(Color("AccentColor"))
                                    VStack (alignment: .leading) {
                                        Text("Thaynara Andrade")
                                            .font(.title.bold())
                                        HStack {
                                            Text("  Psiquiatria - HUWC")
                                                .foregroundColor(Color.gray)
                                                .font(.system(size:10))
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                    }
                
                
                ScrollView(.vertical) {
                    LazyVGrid(
                        columns: Array(
                            repeating: GridItem(
                                .flexible(),
                                spacing: gridSpacing
                            ),
                            count: columnCount
                        ),
                        spacing: gridSpacing
                    ){
                        //                    Spacer()
                        Button (action: {}) {
                            Image("EXAMES")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .shadow(color: .gray.opacity(0.5), radius: 5, x: -2, y: 2)
                                .cornerRadius(40)
                                .padding()
                        }
                        Button (action: {}) {
                            Image("CONSULTAS")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .shadow(color: .gray.opacity(0.5), radius: 5, x: -2, y: 2)
                                .cornerRadius(40)
                                .padding()
                        }
                        Button (action: {}) {
                            Image("MEDICACOES")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .shadow(color: .gray.opacity(0.5), radius: 5, x: -2, y: 2)
                                .cornerRadius(40)
                                .padding()
                        }
                        Button (action: {}) {
                            Image("SINTOMAS")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .shadow(color: .gray.opacity(0.5), radius: 5, x: -2, y: 2)
                                .cornerRadius(40)
                                .padding()
                        }
                        Button (action: {}) {
                            Image("ANOTACOES")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .shadow(color: .gray.opacity(0.5), radius: 5, x: -2, y: 2)
                                .cornerRadius(40)
                                .padding()
                        }
                        Button (action: {}) {
                            Image("CONFIGURACAO")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .shadow(color: .gray.opacity(0.5), radius: 5, x: -2, y: 2)
                                .cornerRadius(40)
                                .padding()
                        }
                    }
                }
            }
        }
    }
    
    //        VStack {
    //
    //            Image ("logo")
    //            .resizable()
    //            .aspectRatio(contentMode:.fit)
    //
    //            Button (action: {}) {
    //                Text(" HOME ")
    //                    .foregroundColor(.white)
    //                    .padding()
    //                    .font(.largeTitle)
    //                    .background(Color.purple)
    //                    .cornerRadius(46.0)
    //            }
    //
    
    
    struct Home_Previews: PreviewProvider {
        static var previews: some View {
            Home()
        }
        
    }
}

