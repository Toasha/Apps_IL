import SwiftUI
import AVKit

struct MediaDetailView: View {
    let media: MediaItem
    @State private var showPlayer = false
    
    var body: some View {
        VStack(spacing: 16) {
 
            Image(media.imageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 600)
                .cornerRadius(12)
            
            Button {
                showPlayer = true
            } label: {
                Label("この動画を再生", systemImage: "play.circle.fill")
                    .font(.title2)
                    .padding()
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("説明").font(.headline)
                Text(media.explanation.isEmpty ? "（説明は未入力です）" : media.explanation)
                    .foregroundStyle(.secondary)
            }
            .frame(maxWidth: 700)
            .padding(.top, 8)
            
            Spacer()
        }
        .padding()
        .navigationTitle("詳細")
        .navigationBarTitleDisplayMode(.inline)
        .fullScreenCover(isPresented: $showPlayer) {
            PlayerView(media: media)
        }
    }
}
