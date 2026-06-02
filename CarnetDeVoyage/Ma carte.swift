//
//  Ma carte.swift
//  CarnetDeVoyage
//
//  Created by Petit dragon on 02/06/2026.
//

import SwiftUI

struct Ma_carte: View {
    var body: some View {
        
        
        
        ZStack {
            VStack {
                Spacer()
                Text ("Carte de Pantin")
                    .padding()
                
                Text ("Présentation des quartiers de la Ville de Pantin")
                    .padding()
                Spacer()
                
                ScrollView {
                    VStack (spacing : 0){
                        
                        Image ("Courtis")
                            .resizable()
                        
                        Color.cyan
                            .overlay {
                                Text("Cité des Courtillières")
                            }
                        
                        
                    }
                    .frame(width :.infinity, height : 200)
                    .clipShape(RoundedRectangle(cornerRadius :20))
                    .padding()
                }
            }
        }
    }
}

#Preview {
    Ma_carte()
}
