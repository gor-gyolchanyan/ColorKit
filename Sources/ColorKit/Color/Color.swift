//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

// Exposed

public struct Color: Hashable {

    // Exposed

    // Type: Color
    // Topic: Main

    public init(_ componentSet: ColorComponentSet, alpha: Component) {
        self.componentSet = componentSet
        self.alpha = alpha
    }

    public var componentSet: ColorComponentSet

    public var alpha: Component
}

extension Color {

    // Exposed

    // Type: Color
    // Topic: Main

    public typealias Component = Float64

    public init() {
        self.init(.init(), alpha: .init())
    }
}
