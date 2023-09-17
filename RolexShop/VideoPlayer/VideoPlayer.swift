
import Foundation // Hier wird das Foundation-Framework importiert, das grundlegende Funktionen und Klassen für die Entwicklung von Swift-Anwendungen bereitstellt. Foundation enthält eine breite Palette von Funktionen, darunter Datentypen, Dateiverwaltung, Netzwerkkommunikation und vieles mehr.

import AVKit // Hier wird das AVKit-Framework importiert, das für die Arbeit mit Audio- und Videoinhalten in iOS- und macOS-Anwendungen entwickelt wurde. AVKit stellt Klassen und APIs zur Verfügung, die das Abspielen, Aufnehmen und Verarbeiten von Audio- und Videoinhalten erleichtern. Dies ist besonders nützlich, wenn Sie Multimediafunktionen in Ihrer Anwendung implementieren möchten, wie das Abspielen von Videos oder Audiodateien.

var videoPlayer: AVPlayer? // Ein optionaler AVPlayer, da er möglicherweise nicht initialisiert wird

func playVideo(fileName: String, fileFormat: String) -> AVPlayer { // Die Funktion gibt einen AVPlayer zurück
    if Bundle.main.url(forResource: fileName, withExtension: fileFormat) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: fileName, withExtension: fileFormat)!) // Initialisiere den AVPlayer mit der angegebenen URL
        videoPlayer?.play() // Starte die Wiedergabe des Videos
    }
    return videoPlayer! // Wir erzwingen den Rückgabewert des AVPlayers, um sicherzustellen, dass ein Wert zurückgegeben wird
}
