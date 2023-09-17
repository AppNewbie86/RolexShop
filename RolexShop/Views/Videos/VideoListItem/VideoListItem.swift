
import Foundation
import SwiftUI
import AVKit

struct VideoListItem: View {
    let video: Video

    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                // Hintergrundbild mit Video-Thumbnail
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                    .cornerRadius(9)

                // Abspiel-Button-Symbol über dem Thumbnail
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 4)
            } //: ZSTACK

            VStack(alignment: .leading, spacing: 10) {
                // Videotitel
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor) // Verwendet die Gerätefarbe aus Assets

                // Video-Beschreibung (Überschrift)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            } //: VSTACK
        } //: END HSTACK
    }
}

struct VideoListItem_Previews: PreviewProvider {
    // Eine Beispiel-Videoliste für die Vorschau
    static let videos: [Video] = Bundle.main.decode("videos.json")

    static var previews: some View {
        // Beispielvideoelement für die Vorschau
        VideoListItem(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
