//
//  perfil.swift
//  PrimeiroAPPP
//
//  Created by Thaynara da Silva Andrade on 18/05/22.
//

import SwiftUI

struct perfil: View {
        let telas: telas
        
        var body: some View {
            Image("MEDICACOES")
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.ultraThinMaterial)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 30)
                    VStack(spacing: 8) {
                        Text(telas.budget.formatted(.currency(code: trip.currency)))
                            .font(.title.bold())
                            .accessibilityLabel(Text("Budget"))
                            .accessibilityValue(telas.budget.formatted(.currency(code: trip.currency).grouping(.never)))
                        VStack {
                            Text("AVAILABLE")
                                .font(.caption2.weight(.light))
                                .foregroundColor(.secondary)
                            Text(trip.availableMoney, format: .currency(code: trip.currency))
                                .font(.callout)
                        }
                        .accessibilityElement(children: .ignore)
                        .accessibilityLabel(Text("Available"))
                        .accessibilityValue(trip.availableMoney.formatted(.currency(code: trip.currency).grouping(.never)))
                    }
                }
        }
        
    }

    struct HeaderView_Previews: PreviewProvider {
        
        static var previews: some View {
            Group {
                HeaderView(telas: .paris)
                    .preferredColorScheme(.light)
                HeaderView(telas: .paris)
                    .preferredColorScheme(.dark)
            }
            .padding()
            .previewLayout(.sizeThatFits)
        }
        
    }

struct perfil_Previews: PreviewProvider {
    static var previews: some View {
        perfil()
    }
}
