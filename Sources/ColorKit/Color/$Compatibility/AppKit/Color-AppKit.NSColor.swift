//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if os(macOS) && !targetEnvironment(macCatalyst)
    import struct CoreGraphics.CGFloat
    import class Foundation.Bundle
    import class AppKit.NSColor

    extension Color {

        // Exposed

        // Type: Color
        // Topic: AppKit.NSColor

        public init?(_ color: AppKit.NSColor) {
            if let instance = Self(colorSpaceRGBA: color) {
                self = instance
            } else if let instance = Self(colorSpaceHSBA: color) {
                self = instance
            } else if let instance = Self(colorSpaceBA: color) {
                self = instance
            }
            return nil
        }

        public init?(colorSpaceBA color: AppKit.NSColor) {
            switch color.colorSpaceName {
                case .calibratedWhite, .deviceWhite:
                    var brightness: CoreGraphics.CGFloat = .nan
                    var alpha: CoreGraphics.CGFloat = .nan
                    color.getWhite(
                        &brightness,
                        alpha: &alpha
                    )
                    self.init(
                        .brightness(
                            .init(brightness)
                        ),
                        alpha: .init(alpha)
                    )
                default:
                    return nil
            }
        }

        public init?(colorSpaceHSBA color: AppKit.NSColor) {
            switch color.colorSpaceName {
                case .calibratedRGB, .deviceRGB:
                    var hue: CoreGraphics.CGFloat = .nan
                    var saturation: CoreGraphics.CGFloat = .nan
                    var brightness: CoreGraphics.CGFloat = .nan
                    var alpha: CoreGraphics.CGFloat = .nan
                    color.getHue(
                        &hue,
                        saturation: &saturation,
                        brightness: &brightness,
                        alpha: &alpha
                    )
                    self.init(
                        .hueSaturationBrightness(
                            .init(hue),
                            .init(saturation),
                            .init(brightness)
                        ),
                        alpha: .init(alpha)
                    )
                default:
                    return nil
            }
        }

        public init?(colorSpaceRGBA color: AppKit.NSColor) {
            switch color.colorSpaceName {
                case .calibratedRGB, .deviceRGB:
                    var red: CoreGraphics.CGFloat = .nan
                    var green: CoreGraphics.CGFloat = .nan
                    var blue: CoreGraphics.CGFloat = .nan
                    var alpha: CoreGraphics.CGFloat = .nan
                    color.getRed(
                        &red,
                        green: &green,
                        blue: &blue,
                        alpha: &alpha
                    )
                    self.init(
                        .redGreenBlue(
                            .init(red),
                            .init(green),
                            .init(blue)
                        ),
                        alpha: .init(alpha)
                    )
                default:
                    return nil
            }
        }
    }
#endif
