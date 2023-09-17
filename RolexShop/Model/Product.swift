// Foundation-Bibliothek importiert, die eine grundlegende Sammlung von Klassen, Strukturen und Funktionen für die Entwicklung von Swift-Anwendungen bereitstellt

import Foundation
// Definiere die Datenstruktur für ein Produkt
struct Product: Identifiable, Hashable {
    var id = UUID()
    var imageName: String
    var title: String // Productparameter mit einem Titel
    var description: String // Productparameter mit einer Beschreibung 1 Absatz
    var description2: String // Productparameter mit einer Beschreibung 2 Absatz
    var isLiked: Bool = false // Productparameter mit einem Bool steht momentan auf (falsch)
}
