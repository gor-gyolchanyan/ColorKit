//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if os(macOS) && targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS)
    import class UIKit.UITraitCollection

    extension ColorStyle {

        // Exposed

        // Type: ColorStyle
        // Topic: UIKit.UITraitCollection

        public init(_ traitCollection: UIKit.UITraitCollection) {
            let theme: Theme?
            if #available(macCatalyst 13.0, iOS 12.0, tvOS 10.0, *) {
                theme = Theme(traitCollection.userInterfaceStyle)
            } else {
                theme = nil
            }

            let contrast: Contrast?
            if #available(macCatalyst 13.0, iOS 13.0, tvOS 13.0, *) {
                contrast = Contrast(traitCollection.accessibilityContrast)
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
