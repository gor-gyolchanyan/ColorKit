//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if canImport(AppKit)
import AppKit

// Type: NSColor

// Topic: ColorDescriptorHaving

extension NSColor {

    // Exposed

    public convenience init<Color>(_ color: Color, style: ColorStyle? = nil)
    where Color: ColorDescriptorHaving {
        switch color.colorDescriptor.withStyle(style) {
            case .dynamic(choose: let choose):
                if #available(macOS 10.15, *) {
                    self.init(name: nil, dynamicProvider: { .init(choose(.init($0))) })
                } else {
                    self.init(choose(.init()))
                }
            case .colorSpaceBA(brightness: let brightness, alpha: let alpha):
                self.init(white: brightness, alpha: alpha)
            case .colorSpaceHSBA(hue: let hue, saturation: let saturation, brightness: let brightness, alpha: let alpha):
                self.init(hue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
            case .colorSpaceRGBA(red: let red, green: let green, blue: let blue, alpha: let alpha):
                self.init(red: red, green: green, blue: blue, alpha: alpha)
        }
    }
}
#endif
