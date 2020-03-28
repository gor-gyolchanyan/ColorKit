//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if os(macOS) && targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS)
    import class UIKit.UIColor

    extension UIKit.UIColor {

        // Exposed

        // Type: UIKit.UIColor
        // Topic: CustomColorSetConvertible

        public convenience init<Other>(_ other: Other)
        where Other: CustomColorSetConvertible {
            func choose(_ style: ColorStyle) -> Color {
                other.colorSet[style: style] ?? .init()
            }
            if #available(iOS 13.0, macCatalyst 13.0, tvOS 13.0, *) {
                self.init(dynamicProvider: { .init(choose(.init($0))) })
            } else {
                self.init(choose(.init()))
            }
        }
    }
#endif
