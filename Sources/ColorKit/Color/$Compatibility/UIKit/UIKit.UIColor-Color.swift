//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if os(macOS) && targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS)
    import class UIKit.UIColor

    extension UIKit.UIColor {

        // Exposed

        // Type: UIKit.UIColor
        // Topic: Color

        public convenience init(_ color: Color) {
            switch color.componentSet {
                case .brightness(
                    let brightness
                ):
                    self.init(
                        white: .init(brightness),
                        alpha: .init(color.alpha)
                    )
                case .hueSaturationBrightness(
                    let hue,
                    let saturation,
                    let brightness
                ):
                    self.init(
                        hue: .init(hue),
                        saturation: .init(saturation),
                        brightness: .init(brightness),
                        alpha: .init(color.alpha)
                    )
                case .redGreenBlue(
                    let red,
                    let green,
                    let blue
                ):
                    self.init(
                        red: .init(red),
                        green: .init(green),
                        blue: .init(blue),
                        alpha: .init(color.alpha)
                    )
            }
        }
    }
#endif
