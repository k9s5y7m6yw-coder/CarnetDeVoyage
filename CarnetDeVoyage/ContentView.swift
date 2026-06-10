//
//  ListeCite.swift
//  CarnetDeVoyage
//

import SwiftUI

struct ContentView: View {
    @State private var cites = Cite.listes
    @State private var afficheModal = false
    
    private var depHDS: [Cite] {
        cites.filter { $0.departement == .hautDeSeine }
    }
    
    private var depY: [Cite] {
        cites.filter { $0.departement == .yvelines }
    }
    
    private var depSSD: [Cite] {
        cites.filter { $0.departement == .seineSaintDenis }
    }
    
    private var depE: [Cite] {
        cites.filter { $0.departement == .essonne }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                Text("Apprendre à apprécier l'architecture des cités de France")
                    .padding()
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                List {
                    if !depHDS.isEmpty {
                        Section("Hauts-de-Seine") {
                            ForEach(depHDS) { cite in
                                NavigationLink {
                                    CiteDetailView(cite: cite)
                                } label: {
                                    cellule(cite)
                                }
                            }
                        }
                    }
                    
                    if !depSSD.isEmpty {
                        Section("Seine-Saint-Denis") {
                            ForEach(depSSD) { cite in
                                NavigationLink {
                                    CiteDetailView(cite: cite)
                                } label: {
                                    cellule(cite)
                                }
                            }
                        }
                    }
                    
                    if !depY.isEmpty {
                        Section("Yvelines") {
                            ForEach(depY) { cite in
                                NavigationLink {
                                    CiteDetailView(cite: cite)
                                } label: {
                                    cellule(cite)
                                }
                            }
                        }
                    }
                    
                    if !depE.isEmpty {
                        Section("Essonne") {
                            ForEach(depE) { cite in
                                NavigationLink {
                                    CiteDetailView(cite: cite)
                                } label: {
                                    cellule(cite)
                                }
                            }
                        }
                    }
                }
                .listStyle(.plain)
                
                Button {
                    afficheModal = true
                } label: {
                    Label("Ajouter un lieu", systemImage: "plus.circle.fill")
                        .frame(maxWidth: .infinity)
                }
                .buttonStyle(.borderedProminent)
                .padding()
            }
            .navigationTitle("Visite Cité")
            .navigationBarTitleDisplayMode(.inline)
            .sheet(isPresented: $afficheModal) {
                AjoutCite { nouveau in
                    cites.append(nouveau)
                }
                .presentationDetents([.medium, .large])
            }
        }
    }
    
    private func cellule(_ cite: Cite) -> some View {
        VStack(spacing: 0) {
            Image(cite.image)
                .resizable()
                .scaledToFill()
                .frame(height: 170)
                .clipped()
            
            Color.blue
                .frame(height: 50)
                .overlay(alignment: .leading) {
                    HStack {
                        Text(cite.nom)
                            .foregroundStyle(.white)
                            .bold()
                        
                        Text(cite.ville)
                            .foregroundStyle(.white)
                        
                        Spacer()
                        
                        Image(systemName: cite.symbole)
                            .foregroundStyle(.white)
                    }
                    .padding()
                }
        }
        .frame(width: 350, height: 220)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding()
        .swipeActions(edge: .trailing) {
            Button(role: .destructive) {
                cites.removeAll { $0.id == cite.id }
            } label: {
                Label("Supprimer", systemImage: "trash")
            }
        }
    }
}
struct AjoutCite: View {
    var onAjout: (Cite) -> Void
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var nom = ""
    @State private var ville = ""
    @State private var departement: Departement = .hautDeSeine
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Cité") {
                    TextField("Nom", text: $nom)
                    TextField("Ville", text: $ville)
                    
                    Picker("Département", selection: $departement) {
                        Text("Hauts-de-Seine").tag(Departement.hautDeSeine)
                        Text("Seine-Saint-Denis").tag(Departement.seineSaintDenis)
                        Text("Yvelines").tag(Departement.yvelines)
                        Text("Essonne").tag(Departement.essonne)
                    }
                }
                
                Button("Ajouter") {
                    let nouvelleCite = Cite(
                        nom: nom,
                        ville: ville,
                        image: "defaultImage",
                        symbole: "",
                        status : true,
                        departement: departement,
                        description:"Cité ajoutée",
                        architecteImage : "homer",
                        architecteNom : "Homer Simpson",
                        imagesCarousel : [""]
                        
                    )
                    
                    onAjout(nouvelleCite)
                    dismiss()
                }
                .disabled(nom.isEmpty || ville.isEmpty)
            }
            .navigationTitle("Ajouter une cité")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
#Preview {
    ContentView()
}
