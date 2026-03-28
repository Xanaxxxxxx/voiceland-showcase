import SwiftUI

/// Fine chart grid used to evoke clinical instruments without shipping app logic.
public struct ShowcaseECGGridView: View {
    public init() {}

    public var body: some View {
        Canvas { context, size in
            let spacing: CGFloat = 15
            let majorSpacing = spacing * 5
            var minorPath = Path()
            var majorPath = Path()

            for x in stride(from: 0, through: size.width, by: spacing) {
                if x.truncatingRemainder(dividingBy: majorSpacing) == 0 {
                    majorPath.move(to: CGPoint(x: x, y: 0))
                    majorPath.addLine(to: CGPoint(x: x, y: size.height))
                } else {
                    minorPath.move(to: CGPoint(x: x, y: 0))
                    minorPath.addLine(to: CGPoint(x: x, y: size.height))
                }
            }

            for y in stride(from: 0, through: size.height, by: spacing) {
                if y.truncatingRemainder(dividingBy: majorSpacing) == 0 {
                    majorPath.move(to: CGPoint(x: 0, y: y))
                    majorPath.addLine(to: CGPoint(x: size.width, y: y))
                } else {
                    minorPath.move(to: CGPoint(x: 0, y: y))
                    minorPath.addLine(to: CGPoint(x: size.width, y: y))
                }
            }

            context.stroke(minorPath, with: .color(.white.opacity(0.02)), lineWidth: 0.5)
            context.stroke(majorPath, with: .color(.white.opacity(0.05)), lineWidth: 0.5)
        }
        .drawingGroup()
    }
}

public extension View {
    func showcaseChartVerticalFadeMask() -> some View {
        mask(
            LinearGradient(
                stops: [
                    .init(color: .clear, location: 0),
                    .init(color: .black, location: 0.15),
                    .init(color: .black, location: 0.85),
                    .init(color: .clear, location: 1)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
        )
    }

    func showcaseChartBackgroundGradient(color: Color, intensity: Double) -> some View {
        background(
            LinearGradient(
                colors: [color.opacity(0.15), .clear],
                startPoint: .bottom,
                endPoint: .top
            )
            .opacity(0.8 + intensity * 0.4)
        )
    }
}
