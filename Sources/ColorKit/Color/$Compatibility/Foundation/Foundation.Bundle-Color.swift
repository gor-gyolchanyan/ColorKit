//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if canImport(Foundation)
    import class Foundation.Bundle
    #if os(macOS) && !targetEnvironment(macCatalyst)
        import class AppKit.NSColor
    #elseif os(macOS) && targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS)
        import class UIKit.UIColor
    #endif

    extension Foundation.Bundle {

        // Exposed

        // Type: Foundation.Bundle
        // Topic: Color

        public func color(named name: String) -> Color? {
            #if os(macOS) && !targetEnvironment(macCatalyst)
                if #available(macOS 10.13, *) {
                    guard let nativeColor = AppKit.NSColor(named: name, bundle: self) else {
                        return nil
                    }
                    return Color(nativeColor)
                } else {
                    return nil
                }
            #elseif os(macOS) && targetEnvironment(macCatalyst) || os(iOS) || os(tvOS) || os(watchOS)
                if #available(macCatalyst 13.0, iOS 11.0, tvOS 11.0, watchOS 4.0, *) {
                    guard let nativeColor = UIKit.UIColor(named: name, in: self, compatibleWith: nil) else {
                        return nil
                    }
                    return Color(nativeColor)
                } else {
                    return nil
                }
            #else
                return nil
            #endif
        }
    }
#endif
