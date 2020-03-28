//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if os(macOS) && !targetEnvironment(macCatalyst)
    import class AppKit.NSColor

    extension AppKit.NSColor {

        // Exposed

        // Type: AppKit.NSColor
        // Topic: CustomColorSetConvertible

        public convenience init<Other>(_ other: Other)
        where Other: CustomColorSetConvertible {
            func choose(_ style: ColorStyle) -> Color {
                other.colorSet[style: style] ?? .init()
            }
            if #available(macOS 10.15, *) {
                self.init(name: nil, dynamicProvider: { .init(choose(.init($0))) })
            } else {
                self.init(choose(.init()))
            }
        }
    }
#endif
