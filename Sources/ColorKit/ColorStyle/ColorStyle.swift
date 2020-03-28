//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

// Exposed

public struct ColorStyle: Hashable, Codable {

    // Exposed

    // Type: ColorStyle
    // Topic: Main

    public init(
        theme: Theme = .init(),
        contrast: Contrast = .init()
    ) {
        self.theme = theme
        self.contrast = contrast
    }

    public var theme: Theme

    public var contrast: Contrast
}
