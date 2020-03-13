//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if canImport(UIKit)
import UIKit

// Type: ColorStyle.Theme

// Topic: UITraitCollection

extension ColorStyle.Theme {

    // Exposed

    public init?(_ traitCollection: UITraitCollection) {
        if #available(macCatalyst 13.0, iOS 12.0, tvOS 10.0, *) {
            switch traitCollection.userInterfaceStyle {
                case .dark:
                    self = .dark
                case .light:
                    self = .light
                case .unspecified:
                    return nil
                @unknown default:
                    return nil
            }
        } else {
            return nil
        }
    }
}
#endif
