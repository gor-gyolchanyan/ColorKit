//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if os(macOS) && targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS)
    import struct CoreGraphics.CGFloat
    import class Foundation.Bundle
    import class UIKit.UIColor

    extension Color {

        // Exposed

        // Type: Color
        // Topic: UIKit.UIColor

        public init?(_ color: UIKit.UIColor) {
            if let instance = Self(colorSpaceRGBA: color) {
                self = instance
            } else if let instance = Self(colorSpaceHSBA: color) {
                self = instance
            } else if let instance = Self(colorSpaceBA: color) {
                self = instance
            }
            return nil
        }

        public init?(colorSpaceBA color: UIKit.UIColor) {
            var brightness: CoreGraphics.CGFloat = .nan
            var alpha: CoreGraphics.CGFloat = .nan
            guard color.getWhite(
                &brightness,
                alpha: &alpha
            ) else {
                return nil
            }
            self.init(
                .brightness(
                    .init(brightness)
                ),
                alpha: .init(alpha)
            )
        }

        public init?(colorSpaceHSBA color: UIKit.UIColor) {
            var hue: CoreGraphics.CGFloat = .nan
            var saturation: CoreGraphics.CGFloat = .nan
            var brightness: CoreGraphics.CGFloat = .nan
            var alpha: CoreGraphics.CGFloat = .nan
            guard color.getHue(
                &hue,
                saturation: &saturation,
                brightness: &brightness,
                alpha: &alpha
            ) else {
                return nil
            }
            self.init(
                .hueSaturationBrightness(
                    .init(hue),
                    .init(saturation),
                    .init(brightness)
                ),
                alpha: .init(alpha)
            )
        }

        public init?(colorSpaceRGBA color: UIKit.UIColor) {
            var red: CoreGraphics.CGFloat = .nan
            var green: CoreGraphics.CGFloat = .nan
            var blue: CoreGraphics.CGFloat = .nan
            var alpha: CoreGraphics.CGFloat = .nan
            guard color.getRed(
                &red,
                green: &green,
                blue: &blue,
                alpha: &alpha
            ) else {
                return nil
            }
            self.init(
                .redGreenBlue(
                    .init(red),
                    .init(green),
                    .init(blue)
                ),
                alpha: .init(alpha)
            )
        }
    }
#endif
