//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

extension ColorStyle {

    // Exposed

    // Type: ColorStyle
    // Topic: Main

    public enum Contrast: String, Hashable, Codable {

        // Exposed

        // Type: ColorStyle.Contrast
        // Topic: Main

        case normal

        case high
    }
}

extension ColorStyle.Contrast {

    // Exposed

    // Type: ColorStyle.Contrast
    // Topic: Main

    public init() {
        self = .normal
    }
}
