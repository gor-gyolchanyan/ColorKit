//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if os(macOS) && targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS)
    import enum UIKit.UIAccessibilityContrast

    extension ColorStyle.Contrast {

        // Exposed

        // Type: ColorStyle.Contrast
        // Topic: UIKit.UIAccessibilityContrast

        @available(macCatalyst 13.0, iOS 13.0, tvOS 13.0, *)
        public init?(_ accessibilityContrast: UIKit.UIAccessibilityContrast) {
            switch accessibilityContrast {
                case .normal:
                    self = .normal
                case .high:
                    self = .high
                case .unspecified:
                    return nil
                @unknown default:
                    return nil
            }
        }
    }
#endif
