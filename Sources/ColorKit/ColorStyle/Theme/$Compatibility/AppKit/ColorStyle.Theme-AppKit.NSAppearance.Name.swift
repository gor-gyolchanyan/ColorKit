//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if os(macOS) && !targetEnvironment(macCatalyst)
    import class AppKit.NSAppearance

    extension ColorStyle.Theme {

        // Exposed

        // Type: ColorStyle.Theme
        // Topic: AppKit.NSAppearance.Name

        @available(macOS 10.13, *)
        public init?(_ appearanceName: AppKit.NSAppearance.Name) {
            if #available(macOS 10.14, *) {
                switch appearanceName {
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
                switch appearanceName {
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
