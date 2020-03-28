//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if os(macOS) && targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS)
    import enum UIKit.UIUserInterfaceStyle

    extension ColorStyle.Theme {

        // Exposed

        // Type: ColorStyle.Theme
        // Topic: UIKit.UIUserInterfaceStyle

        @available(macCatalyst 13.0, iOS 12.0, tvOS 10.0, *)
        public init?(_ userInterfaceStyle: UIKit.UIUserInterfaceStyle) {
            switch userInterfaceStyle {
                case .dark:
                    self = .dark
                case .light:
                    self = .light
                case .unspecified:
                    return nil
                @unknown default:
                    return nil
            }
        }
    }
#endif
