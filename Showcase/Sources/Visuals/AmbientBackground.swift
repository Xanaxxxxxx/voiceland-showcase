import SwiftUI

/// Public-facing adaptation of VoiceBloom's ambient background language.
public struct ShowcaseAmbientBackground: View {
    public var themeColor: Color
    public var intensity: Double

    public init(themeColor: Color, intensity: Double = 0) {
        self.themeColor = themeColor
        self.intensity = intensity
    }

    public var body: some View {
        ZStack {
            Color(red: 0.02, green: 0.02, blue: 0.04)

            GeometryReader { proxy in
                Circle()
                    .fill(themeColor.opacity(0.12))
                    .blur(radius: 130)
                    .frame(width: proxy.size.width * 1.2, height: proxy.size.width * 1.2)
                    .offset(x: -proxy.size.width * 0.3, y: -proxy.size.height * 0.2)

                Circle()
                    .fill(themeColor.opacity(0.08))
                    .blur(radius: 150)
                    .frame(width: proxy.size.width * 1.5, height: proxy.size.width * 1.5)
                    .offset(x: proxy.size.width * 0.2, y: proxy.size.height * 0.4)
            }
            .scaleEffect(1 + intensity * 0.05)
            .animation(.spring(response: 1.5, dampingFraction: 0.8), value: intensity)
        }
    }
}

/// Simple branded header for the showcase repo.
public struct ShowcaseTopHeader: View {
    public init() {}

    public var body: some View {
        HStack(alignment: .bottom) {
            Text("VOICEBLOOM")
                .font(.system(size: 14, weight: .heavy))
                .kerning(2)
                .foregroundStyle(.white.opacity(0.9))
            Spacer()
        }
        .padding(.horizontal, 24)
        .padding(.top, 20)
    }
}

/// Top fade that keeps status items readable over rich backgrounds.
public struct ShowcaseStatusBarScrim: View {
    public var progress: CGFloat

    public init(progress: CGFloat = 1) {
        self.progress = progress
    }

    public var body: some View {
        let clamped = max(0, min(1, progress))

        ZStack {
            Rectangle()
                .fill(.ultraThinMaterial)
                .opacity(clamped * 0.74)
                .mask {
                    LinearGradient(
                        stops: [
                            .init(color: .black, location: 0),
                            .init(color: .black.opacity(0.86), location: 0.28),
                            .init(color: .black.opacity(0.2), location: 0.62),
                            .init(color: .clear, location: 1)
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                }

            LinearGradient(
                stops: [
                    .init(color: .black.opacity(1), location: 0),
                    .init(color: .black.opacity(0.7), location: 0.28),
                    .init(color: .black.opacity(0.08), location: 0.62),
                    .init(color: .clear, location: 1)
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .blur(radius: 24 * clamped)
            .opacity(clamped * 0.88)
        }
        .frame(height: 96)
        .opacity(clamped)
        .ignoresSafeArea(edges: .top)
        .allowsHitTesting(false)
        .accessibilityHidden(true)
    }
}

public func showcaseStatusBarScrimProgress(for offset: CGFloat) -> CGFloat {
    let distance = max(0, offset)
    let trigger: CGFloat = 1
    let fadeDistance: CGFloat = 28
    let adjusted = max(0, distance - trigger)
    return min(1, adjusted / fadeDistance)
}
