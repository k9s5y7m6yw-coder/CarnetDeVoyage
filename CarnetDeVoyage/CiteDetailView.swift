import SwiftUI

struct CiteDetailView: View {
    let cite: Cite
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                
                Image(cite.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 350, height: 240)
                    .clipped()
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(cite.nom)
                        .font(.largeTitle)
                        .bold()
                        .lineLimit(2)
                    
                    Text(cite.ville)
                        .font(.title3)
                        .foregroundStyle(.gray)
                }
                .frame(width: 350, alignment: .leading)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Description")
                        .font(.title)
                        .bold()
                    
                    Text(cite.description)
                        .font(.callout)
                        .multilineTextAlignment(.leading)
                        
                }
                .frame(width: 350, alignment: .leading)
                
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Architecte")
                        .font(.title)
                        .bold()
                    HStack(spacing : 50){
                        Image(cite.architecteImage)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 120, height: 120)
                            .clipShape(Circle())
                        
                        Text(cite.architecteNom)
                            .font(.title3)
                    }
                }
                .frame(width: 350, alignment: .leading)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Photos")
                        .font(.title)
                        .bold()
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 15) {
                            ForEach(cite.imagesCarousel, id: \.self) { imageName in
                                Image(imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 220, height: 140)
                                    .clipped()
                                    .clipShape(RoundedRectangle(cornerRadius: 15))
                            }
                        }
                    }
                    .frame(width: 350)
                }
                .frame(width: 350, alignment: .leading)
            }
            .frame(width: 350, alignment: .leading)
            .padding(.top, 20)
        }
        .background(Color.black)
        .foregroundStyle(.white)
        .navigationTitle(cite.nom)
        .navigationBarTitleDisplayMode(.inline)
    }
}
#Preview {
    CiteDetailView(cite: Cite.listes[0])
}
