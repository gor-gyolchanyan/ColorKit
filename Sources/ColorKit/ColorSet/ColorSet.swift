//
// Introductory information can be found in the `README.md` file located in the root directory of this repository.
// Licensing information can be found in the `LICENSE` file located in the root directory of this repository.
//

public struct ColorSet: Hashable {

    // Exposed

    // Type: ColorSet
    // Topic: Main

    public init() {
        _anyThemeAnyContrast = nil
        _anyThemeNormalContrast = nil
        _anyThemeHighContrast = nil
        _darkThemeAnyContrast = nil
        _darkThemeNormalContrast = nil
        _darkThemeHighContrast = nil
        _lightThemeAnyContrast = nil
        _lightThemeNormalContrast = nil
        _lightThemeHighContrast = nil
    }

    // Concealed

    // Type: ColorSet
    // Topic: Main

    private var _anyThemeAnyContrast: Color?
    private var _anyThemeNormalContrast: Color?
    private var _anyThemeHighContrast: Color?
    private var _darkThemeAnyContrast: Color?
    private var _darkThemeNormalContrast: Color?
    private var _darkThemeHighContrast: Color?
    private var _lightThemeAnyContrast: Color?
    private var _lightThemeNormalContrast: Color?
    private var _lightThemeHighContrast: Color?
}

extension ColorSet {

    // Exposed

    // Type: ColorSet
    // Topic: Main

    public subscript(
        theme theme: ColorStyle.Theme? = nil,
        contrast contrast: ColorStyle.Contrast? = nil
    ) -> Color? {
        _read {
            switch (theme, contrast) {
                case (.dark, .normal):   yield _darkThemeNormalContrast
                case (.dark, .high):     yield _darkThemeHighContrast
                case (.dark, nil):       yield _darkThemeAnyContrast
                case (.light, .normal):  yield _lightThemeNormalContrast
                case (.light, .high):    yield _lightThemeHighContrast
                case (.light, nil):      yield _lightThemeAnyContrast
                case (nil, .normal):     yield _anyThemeNormalContrast
                case (nil, .high):       yield _anyThemeHighContrast
                case (nil, nil):         yield _anyThemeAnyContrast
            }
        }

        _modify {
            switch (theme, contrast) {
                case (.dark, .normal):   yield &_darkThemeNormalContrast
                case (.dark, .high):     yield &_darkThemeHighContrast
                case (.dark, nil):       yield &_darkThemeAnyContrast
                case (.light, .normal):  yield &_lightThemeNormalContrast
                case (.light, .high):    yield &_lightThemeHighContrast
                case (.light, nil):      yield &_lightThemeAnyContrast
                case (nil, .normal):     yield &_anyThemeNormalContrast
                case (nil, .high):       yield &_anyThemeHighContrast
                case (nil, nil):         yield &_anyThemeAnyContrast
            }
        }
    }
    public subscript(style style: ColorStyle) -> Color? {
        switch (style.theme, style.contrast) {
            case (.dark, .normal):
                return
                    self[theme: .dark, contrast: .normal] ??
                    self[theme: .dark] ??
                    self[contrast: .normal] ??
                    self[]
            case (.dark, .high):
                return
                    self[theme: .dark, contrast: .high] ??
                    self[theme: .dark] ??
                    self[contrast: .high] ??
                    self[]
            case (.light, .normal):
                return
                    self[theme: .light, contrast: .normal] ??
                    self[theme: .light] ??
                    self[contrast: .normal] ??
                    self[]
            case (.light, .high):
                return
                    self[theme: .light, contrast: .high] ??
                    self[theme: .light] ??
                    self[contrast: .high] ??
                    self[]
        }
    }

    public mutating func apply( other: Self) {
        if let anyThemeAnyContrast = other._anyThemeAnyContrast {
            _anyThemeAnyContrast = anyThemeAnyContrast
        }
        if let anyThemeNormalContrast = other._anyThemeNormalContrast {
            _anyThemeNormalContrast = anyThemeNormalContrast
        }
        if let anyThemeHighContrast = other._anyThemeHighContrast {
            _anyThemeHighContrast = anyThemeHighContrast
        }
        if let darkThemeAnyContrast = other._darkThemeAnyContrast {
            _darkThemeAnyContrast = darkThemeAnyContrast
        }
        if let darkThemeNormalContrast = other._darkThemeNormalContrast {
            _darkThemeNormalContrast = darkThemeNormalContrast
        }
        if let darkThemeHighContrast = other._darkThemeHighContrast {
            _darkThemeHighContrast = darkThemeHighContrast
        }
        if let lightThemeAnyContrast = other._lightThemeAnyContrast {
            _lightThemeAnyContrast = lightThemeAnyContrast
        }
        if let lightThemeNormalContrast = other._lightThemeNormalContrast {
            _lightThemeNormalContrast = lightThemeNormalContrast
        }
        if let lightThemeHighContrast = other._lightThemeHighContrast {
            _lightThemeHighContrast = lightThemeHighContrast
        }
    }
}
