
import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let videoSelected: String
    let videoTitle: String
    let videoDescription: String // Hier fügen wir eine Beschreibung des Videos hinzu

    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
            }
            .edgesIgnoringSafeArea(.all) // Vollbildmodus aktivieren
            .aspectRatio(nil, contentMode: .fill) // Vollbild ohne Beibehaltung des Seitenverhältnisses
            .onDisappear {
                videoPlayer?.pause() // Pause the video when the view disappears
            }
            
            // Hier fügen wir den Text hinzu
            Text(videoDescription)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}



