//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

// Exposed

public enum ColorComponentSet: Hashable {

    // Exposed

    // Type: ColorComponentSet
    // Topic: Main

    case brightness(Component)

    case hueSaturationBrightness(Component, Component, Component)

    case redGreenBlue(Component, Component, Component)
}

extension ColorComponentSet {

    // Exposed

    public typealias Component = Color.Component

    public init() {
        self = .brightness(.init())
    }
}
