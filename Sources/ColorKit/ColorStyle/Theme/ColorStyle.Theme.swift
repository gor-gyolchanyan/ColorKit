//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

extension ColorStyle {

    // Exposed

    // Type: ColorStyle
    // Topic: Main

    public enum Theme: String, Hashable, Codable {

        // Exposed

        // Type: ColorStyle.Theme
        // Topic: Main

        case dark

        case light
    }
}

extension ColorStyle.Theme {

    // Exposed

    // Type: ColorStyle.Theme
    // Topic: Main

    public init() {
        self = .dark
    }
}
