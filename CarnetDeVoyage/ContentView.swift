//
//  ContentView.swift
//  CarnetDeVoyage
//
//  Created by Petit dragon on 01/06/2026.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        
        
        Text("La carte d'un lieu")
            .font(.title)
            .bold()
            .padding()
           
        
        
        Text("Le livrable du jour : une carte qui combine image cadrée, overlay (badge), Label, formes, étoiles, et tous les modifiers vus aujourd'hui.")
            .padding()
        
   
        ScrollView {
            VStack {
                
                VStack (spacing :0){
                    LinearGradient(colors : [.yellow, .orange, .pink], startPoint: .leading, endPoint :.trailing)
                        
                        .overlay(Image(systemName : "sun.max.fill"))
                        .foregroundStyle(.white)
                        .bold()
                        .font(.largeTitle)
                        .frame(height: 130)
                        .overlay(alignment : .topTrailing) {
                                Label("Visité", systemImage : "checkmark.circle.fill")
                                .padding(6)
                                .background(Capsule().fill(.green))
                                .bold()
                                .padding(.trailing, 8)
                                .padding(.top, 8)
                        }
                    
                    Color.stackdeux
                        .overlay(alignment : .topLeading){
                        VStack(alignment : .leading){
                            Text("Lisbonne")
                                .bold()
                            Label ("Portugal", systemImage : "map")
                                .foregroundStyle(.secondary)
                            HStack {
                                Image(systemName : "star.fill")
                                Image(systemName : "star.fill")
                                Image(systemName : "star.fill")
                                Image(systemName : "star.fill")
                                Image(systemName : "star.fill")
                            }
                            .foregroundStyle(.yellow)
                        }
                    }
                   
                    
                        
                }
                .frame(width :.infinity, height : 200)
                .clipShape(RoundedRectangle(cornerRadius :20))
                
                
                
                VStack (spacing :0){
                    LinearGradient(colors : [.green, .cyan], startPoint: .leading, endPoint :.trailing)
                        .overlay(Image(systemName : "leaf.fill"))
                        .foregroundStyle(.white)
                        .bold()
                        .font(.largeTitle)
                        .frame(height: 130)
                    
                    Color.stackdeux
                        .overlay(alignment : .topLeading){
                        VStack(alignment : .leading){
                            Text("Kyto")
                                .bold()
                            Label ("Japon", systemImage : "map")
                                .foregroundStyle(.secondary)
                            HStack {
                                Image(systemName : "star.fill")
                                Image(systemName : "star.fill")
                                Image(systemName : "star.fill")
                                Image(systemName : "star.fill")
                                Image(systemName : "star")
                            }
                            .foregroundStyle(.yellow)
                        }
                    }
                }
                .frame(width :.infinity, height : 200)
                .clipShape(RoundedRectangle(cornerRadius :20))
                
                VStack (spacing :0){
                    LinearGradient(colors : [.blue,.cyan], startPoint: .leading, endPoint :.trailing)
                        .overlay(Image(systemName : "snow"))
                        .foregroundStyle(.white)
                        .bold()
                        .font(.largeTitle)
                        .frame(height: 130)
                    
                    Color.stackdeux
                        .overlay(alignment : .topLeading){
                        VStack(alignment : .leading){
                            Text("Rejkavik")
                                .bold()
                            Label ("Islande", systemImage : "map")
                                .foregroundStyle(.secondary)
                            HStack {
                                Image(systemName : "star.fill")
                                Image(systemName : "star.fill")
                                Image(systemName : "star.fill")
                                Image(systemName : "star.fill")
                                Image(systemName : "star.fill")
                            }
                            .foregroundStyle(.yellow)
                        }
                    }
                    
                }
                .frame(width :.infinity, height : 200)
                .clipShape(RoundedRectangle(cornerRadius :20))
            }
            .padding()
        }
        }
            
    }


#Preview {
    ContentView()
}
