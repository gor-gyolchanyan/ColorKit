//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if os(macOS) && targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS)
    import protocol UIKit.UITraitEnvironment

    extension ColorStyle {

        // Exposed

        // Type: ColorStyle
        // Topic: UIKit.UITraitEnvironment

        public init<Object>(of object: Object)
        where Object: UIKit.UITraitEnvironment {
            self.init(object.traitCollection)
        }
    }
#endif
