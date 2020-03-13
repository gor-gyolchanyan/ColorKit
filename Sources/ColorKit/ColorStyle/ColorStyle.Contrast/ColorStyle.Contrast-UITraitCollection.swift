//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if canImport(UIKit)
import UIKit

// Type: ColorStyle.Contrast

// Topic: UITraitCollection

extension ColorStyle.Contrast {

    // Exposed

    public init?(_ traitCollection: UITraitCollection) {
        if #available(macCatalyst 13.0, iOS 13.0, tvOS 13.0, *) {
            switch traitCollection.accessibilityContrast {
                case .normal:
                    self = .normal
                case .high:
                    self = .high
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
