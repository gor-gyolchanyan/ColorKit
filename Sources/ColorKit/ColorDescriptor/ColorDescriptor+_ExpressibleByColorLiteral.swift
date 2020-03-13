//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

// Type: ColorDescriptor

// Protocol: _ExpressibleByColorLiteral

extension ColorDescriptor: _ExpressibleByColorLiteral {

    // Exposed

    public init(_colorLiteralRed red: Float, green: Float, blue: Float, alpha: Float) {
        self.init(red: .init(red), green: .init(green), blue: .init(blue), alpha: .init(alpha))
    }
}
