//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if os(macOS) && !targetEnvironment(macCatalyst)
    import class AppKit.NSAppearance

    extension ColorStyle {

        // Exposed

        // Type: ColorStyle
        // Topic: AppKit.NSAppearance

        public init(_ appearance: AppKit.NSAppearance) {
            let theme: Theme?
            if #available(macOS 10.13, *) {
                theme = Theme(appearance.name)
            } else {
                theme = nil
            }
            let contrast: Contrast?
            if #available(macOS 10.13, *) {
                contrast = Contrast(appearance.name)
            } else {
                contrast = nil
            }

            self.init(
                theme: theme ?? .init(),
                contrast: contrast ?? .init()
            )
        }
    }
#endif
