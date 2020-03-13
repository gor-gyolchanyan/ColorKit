//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if canImport(UIKit)
import UIKit

// Type: UITraitEnvironment

// Topic: ColorStyle

extension UITraitEnvironment {

    // Exposed

    public var colorStyle: ColorStyle {
        .init(traitCollection)
    }
}
#endif
