//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if canImport(UIKit)
import UIKit

// Type: ColorDescriptor

// Topic: UIColor

extension ColorDescriptor {

    // Exposed

    #if (os(macOS) && targetEnvironment(macCatalyst)) || os(iOS) || os(tvOS) || os(watchOS)
    public init?(name: String, bundle: Bundle) {
        if #available(macCatalyst 13.0, iOS 11.0, tvOS 11.0, watchOS 4.0, *) {
            guard let color = UIColor(named: name, in: bundle, compatibleWith: nil) else {
                return nil
            }
            self.init(color)
        } else {
            return nil
        }
    }
    #endif

    public init?(_ color: UIColor) {
        if let instance = Self(colorSpaceRGBA: color) {
            self = instance
        } else if let instance = Self(colorSpaceHSBA: color) {
            self = instance
        } else if let instance = Self(colorSpaceBA: color) {
            self = instance
        }
        return nil
    }

    public init?(colorSpaceBA color: UIColor) {
        var brightness: CGFloat = .nan
        var alpha: CGFloat = .nan
        guard color.getWhite(&brightness, alpha: &alpha) else {
            return nil
        }
        self.init(brightness: brightness, alpha: alpha)
    }

    public init?(colorSpaceHSBA color: UIColor) {
        var hue: CGFloat = .nan
        var saturation: CGFloat = .nan
        var brightness: CGFloat = .nan
        var alpha: CGFloat = .nan
        guard color.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha) else {
            return nil
        }
        self.init(hue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
    }

    public init?(colorSpaceRGBA color: UIColor) {
        var red: CGFloat = .nan
        var green: CGFloat = .nan
        var blue: CGFloat = .nan
        var alpha: CGFloat = .nan
        guard color.getRed(&red, green: &green, blue: &blue, alpha: &alpha) else {
            return nil
        }
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
#endif
