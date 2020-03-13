//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if canImport(AppKit)
import AppKit

// Type: ColorStyle

// Topic: NSAppearance

extension ColorStyle {

    // Exposed

    public init(_ appearance: NSAppearance) {
        self.init(
            theme: Theme(appearance),
            contrast: Contrast(appearance)
        )
    }
}
#endif