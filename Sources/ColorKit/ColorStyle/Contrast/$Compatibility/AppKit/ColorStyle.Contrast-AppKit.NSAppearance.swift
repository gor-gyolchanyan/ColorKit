//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if os(macOS) && !targetEnvironment(macCatalyst)
    import class AppKit.NSAppearance

    extension ColorStyle.Contrast {

        // Exposed

        // Type: ColorStyle.Contrast
        // Topic: AppKit.NSAppearance.Name

        @available(macOS 10.13, *)
        public init?(_ appearanceName: AppKit.NSAppearance.Name) {
            if #available(macOS 10.14, *) {
                switch appearanceName {
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
