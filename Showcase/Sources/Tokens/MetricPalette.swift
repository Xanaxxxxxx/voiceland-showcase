import SwiftUI

public enum ShowcaseMetricKind: String, CaseIterable {
    case pitch
    case weight
    case resonance
    case constriction
}

public enum ShowcaseMetricPalette {
    public static let harmony = Color(red: 0.70, green: 0.55, blue: 1.00)
    public static let pitch = Color(red: 0.30, green: 0.60, blue: 1.00)
    public static let weight = Color(red: 1.00, green: 0.72, blue: 0.15)
    public static let resonance = Color(red: 0.20, green: 0.90, blue: 0.78)
    public static let constriction = Color(red: 1.00, green: 0.28, blue: 0.58)

    public static func color(for metric: ShowcaseMetricKind) -> Color {
        switch metric {
        case .pitch:
            return pitch
        case .weight:
            return weight
        case .resonance:
            return resonance
        case .constriction:
            return constriction
        }
    }

    public static let chartScale: [String: Color] = [
        "Pitch": pitch,
        "Weight": weight,
        "Resonance": resonance,
        "Constriction": constriction
    ]
}

public extension GraphicsContext {
    mutating func applyShowcaseOLEDGlow(color: Color) {
        blendMode = .plusLighter
        let bloomColor = color.opacity(0.8)
        addFilter(.shadow(color: bloomColor, radius: 6))
        addFilter(.shadow(color: bloomColor.opacity(0.5), radius: 12))
    }
}
