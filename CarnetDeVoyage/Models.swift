import Foundation

struct Cite : Identifiable {
    
    var id = UUID()
    var nom : String
    var ville : String
    var image : String
    var symbole : String
    var status : Bool
    var departement : Departement

    
}
 
var courtis = Cite(nom : "Les Courtillières", ville : "Pantin", image : "Courtis", symbole : "star.fill", status : true, departement: .seineSaintDenis)
var pablo =   Cite(nom : "Pablo Picasso", ville : "Nanterre", image : "Pablo", symbole : "", status : true, departement:.hautDeSeine)
var paveNeuf = Cite(nom : "Le Pavé Neuf", ville : "Noisy-Le-Grand", image : "Pavéneuf2", symbole : "", status : true, departement: .seineSaintDenis)
var noe =    Cite(nom : "La Noé", ville : "Chanteloup-Les-Vignes", image : "Noé", symbole : "", status : true, departement: .yvelines)
var abreuvoir =    Cite(nom : "L'abreuvoir", ville : "Bobigny", image : "Abreuvoir", symbole : "", status : true, departement: .seineSaintDenis)
var clos =    Cite(nom : "Le Clos Saint Lazare", ville : "Stains", image : "Clos2", symbole : "", status : true, departement: .seineSaintDenis)
var mala =   Cite(nom : "La Maladrerie", ville : "Aubervilliers", image : "Mala", symbole : "", status : true, departement: .seineSaintDenis)
var grandeBorne =   Cite(nom : "La Grande Borne", ville : "Grigny", image : "GrandeBorne", symbole : "", status : true, departement: .essonne)

var liste : [Cite] = [courtis, pablo, paveNeuf, noe, abreuvoir, clos, mala, grandeBorne]

enum Departement : String {
    
    case hautDeSeine = "Haut-de-Seine"
    case essonne = "Essonne"
    case seineSaintDenis = "Seine-Saint-Denis"
    case yvelines = "Yvelines"
}
