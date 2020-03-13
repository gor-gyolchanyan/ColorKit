//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if canImport(AppKit)
import AppKit

// Type: ColorStyle.Theme

// Topic: NSAppearance

extension ColorStyle.Theme {

    // Exposed

    public init?(_ appearance: NSAppearance) {
        if #available(macOS 10.14, *) {
            switch appearance.name {
                case
                    .aqua,
                    .vibrantLight,
                    .accessibilityHighContrastAqua,
                    .accessibilityHighContrastVibrantLight
                :
                    self = .light
                case
                    .darkAqua,
                    .vibrantDark,
                    .accessibilityHighContrastDarkAqua,
                    .accessibilityHighContrastVibrantDark
                :
                    self = .dark
                default:
                    return nil
            }
        } else {
            switch appearance.name {
                case
                    .aqua,
                    .vibrantLight
                :
                    self = .light
                case .vibrantDark:
                    self = .dark
                default:
                    return nil
            }
        }
    }
}
#endif
