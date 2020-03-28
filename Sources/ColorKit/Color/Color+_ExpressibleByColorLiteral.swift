//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

extension Color: _ExpressibleByColorLiteral {

    // Exposed

    // Protocol: _ExpressibleByColorLiteral
    // Topic: Main

    public init(
        _colorLiteralRed red: Float,
        green: Float,
        blue: Float,
        alpha: Float
    ) {
        self.init(
            .redGreenBlue(
                .init(red),
                .init(green),
                .init(blue)
            ),
            alpha: .init(alpha)
        )
    }
}
