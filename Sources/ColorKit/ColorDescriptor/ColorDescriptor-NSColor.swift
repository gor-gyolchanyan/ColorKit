//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

#if canImport(AppKit)
import AppKit

// Type: ColorDescriptor

// Topic: NSColor

extension ColorDescriptor {

    // Exposed

    #if (os(macOS) && !targetEnvironment(macCatalyst))
    public init?(name: String, bundle: Bundle) {
        if #available(macOS 10.13, *) {
            guard let color = NSColor(named: name, bundle: bundle) else {
                return nil
            }
            self.init(color)
        } else {
            return nil
        }
    }
    #endif

    public init?(_ color: NSColor) {
        if let instance = Self(colorSpaceRGBA: color) {
            self = instance
        } else if let instance = Self(colorSpaceHSBA: color) {
            self = instance
        } else if let instance = Self(colorSpaceBA: color) {
            self = instance
        }
        return nil
    }

    public init?(colorSpaceBA color: NSColor) {
        switch color.colorSpaceName {
            case .calibratedWhite, .deviceWhite:
                var brightness: CGFloat = .nan
                var alpha: CGFloat = .nan
                color.getWhite(&brightness, alpha: &alpha)
                self.init(brightness: brightness, alpha: alpha)
            default:
                return nil
        }
    }

    public init?(colorSpaceHSBA color: NSColor) {
        switch color.colorSpaceName {
            case .calibratedRGB, .deviceRGB:
                var hue: CGFloat = .nan
                var saturation: CGFloat = .nan
                var brightness: CGFloat = .nan
                var alpha: CGFloat = .nan
                color.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: &alpha)
                self.init(hue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
            default:
                return nil
        }
    }

    public init?(colorSpaceRGBA color: NSColor) {
        switch color.colorSpaceName {
            case .calibratedRGB, .deviceRGB:
                var red: CGFloat = .nan
                var green: CGFloat = .nan
                var blue: CGFloat = .nan
                var alpha: CGFloat = .nan
                color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
                self.init(red: red, green: green, blue: blue, alpha: alpha)
            default:
                return nil
        }
    }
}
#endif
