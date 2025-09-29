import SwiftUI

struct SectionView: View {
    let item: SectionItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(item.title)
                .font(.title3).bold()
                .lineLimit(2)
                .padding(.horizontal)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(item.mediaItems) { media in
                        NavigationLink {
                            MediaDetailView(media: media)
                        } label: {
                            ZStack {
                                Image(media.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 220, height: 124)
                                    .clipped()
                                    .cornerRadius(12)
                            }
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 8)
                .scrollTargetLayout()
            }
            .scrollTargetBehavior(.viewAligned)
        }
    }
}


