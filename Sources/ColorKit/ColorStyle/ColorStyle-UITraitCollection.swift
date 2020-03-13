//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if canImport(UIKit)
import UIKit

// Type: ColorStyle

// Topic: UITraitCollection

extension ColorStyle {

    // Exposed

    public init(_ traitCollection: UITraitCollection) {
        self.init(
            theme: Theme(traitCollection),
            contrast: Contrast(traitCollection)
        )
    }
}
#endif
