//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if canImport(AppKit)
import AppKit

// Type: ColorStyle.Contrast

// Topic: NSAppearance

extension ColorStyle.Contrast {

    // Exposed

    public init?(_ appearance: NSAppearance) {
        if #available(macOS 10.14, *) {
            switch appearance.name {
                case
                    .aqua,
                    .darkAqua,
                    .vibrantLight,
                    .vibrantDark
                :
                    self = .normal
                case
                    .accessibilityHighContrastAqua,
                    .accessibilityHighContrastDarkAqua,
                    .accessibilityHighContrastVibrantLight,
                    .accessibilityHighContrastVibrantDark
                :
                    self = .high
                default:
                    return nil
            }
        } else {
            return nil
        }
    }
}
#endif
