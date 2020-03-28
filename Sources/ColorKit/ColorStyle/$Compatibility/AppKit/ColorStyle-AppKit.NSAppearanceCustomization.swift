//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if os(macOS) && !targetEnvironment(macCatalyst)
    import protocol AppKit.NSAppearanceCustomization

    extension ColorStyle {

        // Exposed

        // Type: ColorStyle
        // Topic: AppKit.NSAppearanceCustomization

        public init<Object>(of object: Object)
        where Object: AppKit.NSAppearanceCustomization {
            self.init(object.effectiveAppearance)
        }
    }
#endif
