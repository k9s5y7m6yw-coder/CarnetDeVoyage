import Foundation

struct Cite : Identifiable, Hashable {
    
    var id = UUID()
    var nom : String
    var ville : String
    var image : String
    var symbole : String
    var status : Bool
    var departement : Departement
    var description: String
    var architecteImage: String
    var architecteNom : String
    var imagesCarousel: [String]

    static let listes : [Cite] = [ Cite(nom : "Les Courtillières", ville : "Pantin", image : "Courtis", symbole : "star.fill", status : true, departement: .seineSaintDenis, description:"La cité des Courtillières, à Pantin, est un grand ensemble emblématique conçu par l’architecte Émile Aillaud dans les années 1950-1960. Connue pour son immense bâtiment courbe surnommé le Serpentin, elle a été considérée à sa construction comme l’un des plus longs bâtiments d’Europe.",architecteImage:"EmileAillaud",architecteNom :"Emile Aillaud (1902-1988)",imagesCarousel: ["courtillières1","courtillières2","courtillières3","courtillières4","courtillières5"]),
                                   Cite(nom : "Pablo Picasso", ville : "Nanterre", image : "Pablo", symbole : "", status : true, departement:.hautDeSeine, description:"",architecteImage:"",architecteNom :"",imagesCarousel: [""]),
                                   Cite(nom : "Le Pavé Neuf", ville : "Noisy-Le-Grand", image : "Pavéneuf2", symbole : "", status : true, departement: .seineSaintDenis, description:"La cité du Pavé-Neuf, à Noisy-le-Grand, est un quartier emblématique connu pour les Arènes de Picasso, un ensemble de logements conçu par l’architecte Manuel Núñez Yanowsky dans les années 1980. Reconnaissable à ses deux grands bâtiments cylindriques surnommés les “camemberts”, le lieu se distingue par une architecture postmoderne monumentale, pensée comme un repère fort de la ville nouvelle de Marne-la-Vallée.",architecteImage:"ManuNunezYanowsky",architecteNom :"Manu Nunez Yanowsky (1942-)",imagesCarousel: ["pavéneuf1","pavéneuf3","pavéneuf4","pavéneuf5","pavéneuf6"]),
                                   Cite(nom : "La Noé", ville : "Chanteloup-Les-Vignes", image : "Noé", symbole : "", status : true, departement: .yvelines, description:"",architecteImage:"",architecteNom :"",imagesCarousel: [""]),
                                   Cite(nom : "L'abreuvoir", ville : "Bobigny", image : "Abreuvoir", symbole : "", status : true, departement: .seineSaintDenis,description:"",architecteImage:"",architecteNom :"",imagesCarousel: [""]),
                                   Cite(nom : "Le Clos Saint Lazare", ville : "Stains", image : "Clos2", symbole : "", status : true, departement: .seineSaintDenis,description:"",architecteImage:"",architecteNom :"",imagesCarousel: [""]),
                                   Cite(nom : "La Grande Borne", ville : "Grigny", image : "GrandeBorne", symbole : "", status : true, departement: .essonne,description:"",architecteImage:"",architecteNom :"",imagesCarousel: [""])]
    
}
 
var courtis = Cite(nom : "Les Courtillières", ville : "Pantin", image : "Courtis", symbole : "star.fill", status : true, departement: .seineSaintDenis,description:"",architecteImage:"",architecteNom :"",imagesCarousel: [""])
var pablo =   Cite(nom : "Pablo Picasso", ville : "Nanterre", image : "Pablo", symbole :"star.fill", status : true, departement:.hautDeSeine,description:"",architecteImage:"",architecteNom :"",imagesCarousel: [""])
var paveNeuf = Cite(nom : "Le Pavé Neuf", ville : "Noisy-Le-Grand", image : "Pavéneuf2", symbole : "star.fill", status : true, departement: .seineSaintDenis,description:"",architecteImage:"",architecteNom :"",imagesCarousel: [""])
var noe =    Cite(nom : "La Noé", ville : "Chanteloup-Les-Vignes", image : "Noé", symbole : "star.fill", status : true, departement: .yvelines,description:"",architecteImage:"",architecteNom :"",imagesCarousel: [""])
var abreuvoir =    Cite(nom : "L'abreuvoir", ville : "Bobigny", image : "Abreuvoir", symbole :"star.fill", status : true, departement: .seineSaintDenis,description:"",architecteImage:"",architecteNom :"",imagesCarousel: [""])
var clos =    Cite(nom : "Le Clos Saint Lazare", ville : "Stains", image : "Clos2", symbole : "star.fill", status : true, departement: .seineSaintDenis,description:"",architecteImage:"",architecteNom :"",imagesCarousel: [""])
var mala =   Cite(nom : "La Maladrerie", ville : "Aubervilliers", image : "Mala", symbole :"star.fill", status : true, departement: .seineSaintDenis,description:"",architecteImage:"",architecteNom :"",imagesCarousel: [""])
var grandeBorne =   Cite(nom : "La Grande Borne", ville : "Grigny", image : "GrandeBorne", symbole : "star.fill", status : true, departement: .essonne,description:"",architecteImage:"",architecteNom :"",imagesCarousel: [""])

var liste : [Cite] = [courtis, pablo, paveNeuf, noe, abreuvoir, clos, mala, grandeBorne]

enum Departement : String {
    
    case hautDeSeine = "Haut-de-Seine"
    case essonne = "Essonne"
    case seineSaintDenis = "Seine-Saint-Denis"
    case yvelines = "Yvelines"
}
