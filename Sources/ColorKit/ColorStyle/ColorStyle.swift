//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

// Type: ColorStyle

public struct ColorStyle: Hashable {

    // Topic: Main

    // Exposed

    public init(theme: Theme? = nil, contrast: Contrast? = nil) {
        self.theme = theme
        self.contrast = contrast
    }

    public var theme: Theme?

    public var contrast: Contrast?
}
