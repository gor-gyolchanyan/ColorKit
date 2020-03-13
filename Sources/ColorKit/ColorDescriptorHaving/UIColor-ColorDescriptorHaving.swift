//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if canImport(UIKit)
import UIKit

// Type: UIColor

// Topic: ColorDescriptorHaving

extension UIColor {

    // Exposed

    public convenience init<Color>(_ color: Color, style: ColorStyle? = nil)
    where Color: ColorDescriptorHaving {
        switch color.colorDescriptor.withStyle(style) {
            case .dynamic(choose: let choose):
                if #available(iOS 13.0, macCatalyst 13.0, tvOS 13.0, *) {
                    self.init(dynamicProvider: { .init(choose(.init($0))) })
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
