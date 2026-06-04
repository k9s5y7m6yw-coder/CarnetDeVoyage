//
//  Carte Cite.swift
//  CarnetDeVoyage
//
//  Created by Petit dragon on 04/06/2026.
//

import SwiftUI

struct Carte_Cite: View {
    
    var liste : [Cite] = [courtis]
    
    var body: some View {
        
        
        
        ForEach(liste) { cite in
            
            
            VStack (spacing : 0){
                
                Image (cite.image)
                    .resizable()
                    .frame(height: 170)
                
                
                
                
                Color.blue
                    .overlay (alignment : .leading) {
                        HStack {
                            Text(cite.nom)
                                .foregroundStyle(.white)
                                .bold()
                            Text(cite.ville)
                                .foregroundStyle(.white)
                            Spacer()
                            Image(systemName : "\(cite.symbole)")
                        }
                        
                        .padding()
                        
                    }
                
                
            }
            .frame(width :350, height : 200)
            .clipShape(RoundedRectangle(cornerRadius :20))
            .padding()
        }
        
    }
}

#Preview {
    Carte_Cite()
}
