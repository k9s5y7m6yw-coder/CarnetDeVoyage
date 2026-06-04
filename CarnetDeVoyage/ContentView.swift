//
//  ContentView.swift
//  CarnetDeVoyage
//
//  Created by Petit dragon on 01/06/2026.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        
        
        NavigationStack {
            ZStack {
                
                
                VStack {
                    
                    
                    Spacer()
                    Text ("Apprendre à apprécier l'architecture des cités de France")
                        .padding()
                        .multilineTextAlignment(.center)
                    Spacer()
                    
                    List {
                        
                        Section ("Haut-De-Seine") {
                            
                            ForEach(liste.filter {$0.departement == .hautDeSeine}) {  cite in
                                Carte_Cite(liste : [cite])
                            }
                        }
                        
                        Section ("Seine-Saint-Denis") {
                            ForEach(liste.filter {$0.departement == .seineSaintDenis}) {  cite in
                                Carte_Cite(liste: [cite])
                            }
                            
                            
                        }
                        
                        Section ("Essonne") {
                            
                            ForEach(liste.filter {$0.departement == .essonne}) {  cite in
                                Carte_Cite(liste : [cite])
                            }
                        }
                        Section ("Yvelines") {
                            
                            ForEach(liste.filter {$0.departement == .yvelines}) {  cite in
                                Carte_Cite(liste: [cite])
                            }
                        }
                        
                    }.navigationTitle("Visite Cité")
                        .navigationBarTitleDisplayMode(.inline)
                        .listStyle(.plain)
                }
            }
        }
    }
}
        
#Preview {
    ContentView()
}
