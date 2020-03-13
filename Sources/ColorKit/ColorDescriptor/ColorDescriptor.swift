//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

import class Foundation.Bundle
import struct CoreGraphics.CGFloat

// Type: ColorDescriptor

public enum ColorDescriptor {

    // Topic: Main

    // Exposed

    /// A dynamically chosen color.
    case dynamic(choose: (ColorStyle) -> Self)

    /// A color with components **Brightness**, and **Alpha**.
    case colorSpaceBA(brightness: CGFloat, alpha: CGFloat)

    /// A color with components **Hue**, **Saturation**, **Brightness**, and **Alpha**.
    case colorSpaceHSBA(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)

    /// A color with components **Red**, **Green**, **Blue**, and **Alpha**.
    case colorSpaceRGBA(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
}

// Topic: Main

extension ColorDescriptor {

    // Exposed

    public init(choose: @escaping (ColorStyle) -> Self) {
        self = .dynamic(choose: choose)
    }

    public init(brightness: CGFloat, alpha: CGFloat = 1) {
        self = .colorSpaceBA(brightness: brightness, alpha: alpha)
    }

    public init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat = 1) {
        self = .colorSpaceHSBA(hue: hue, saturation: saturation, brightness: brightness, alpha: alpha)
    }

    public init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat = 1) {
        self = .colorSpaceRGBA(red: red, green: green, blue: blue, alpha: alpha)
    }

    public func withStyle(_ style: ColorStyle?) -> Self {
        if let style = style {
            switch self {
                case .dynamic(choose: let choose):
                    return choose(style)
                case .colorSpaceBA, .colorSpaceHSBA, .colorSpaceRGBA:
                    return self
            }
        } else {
            return self
        }
    }
}
