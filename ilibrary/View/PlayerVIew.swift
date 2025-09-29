import SwiftUI
import AVKit

struct PlayerView: View {
    let media: MediaItem
    let player: AVPlayer
    
    @Environment(\.dismiss) private var dismiss
    
    init(media: MediaItem) {
        self.media = media
        // mp4 → mov の順で探す（どっちでもOKに）
        if let url = Bundle.main.url(forResource: media.video, withExtension: "mp4")
            ??      Bundle.main.url(forResource: media.video, withExtension: "mov") {
            self.player = AVPlayer(url: url)
        } else {
            // 見つからないときでもクラッシュしない
            self.player = AVPlayer()
            print("⚠️ 動画が見つからない: \(media.video).(mp4/mov)")
        }
    }
    
    var body: some View {
        
        // 閉じるボタン（fullScreenCover想定）
        VStack {
            HStack {
                Button { dismiss() } label: {
                    Image(systemName: "chevron.backward")
                        .font(.system(size: 28, weight: .semibold))
                        .padding(8)
                        .background(.ultraThinMaterial, in: Circle())
                }
                .padding()
                Spacer()
            }
            VideoPlayer(player: player)
                .ignoresSafeArea()
                .onAppear { player.play() }
                .onDisappear { player.pause() }
            
        }
    }
}
