import Foundation
import SwiftUI

public struct Theme {
    public let accent:Color
    public let secondaryAccent:Color
    public let primary:Color
    public let secondary:Color
    public let tertiary:Color
    public let background:Color
    public let secondaryBackground:Color
    public let tertiaryBackground:Color
    public let border:Color
    public let fill:Color
    public let accentFill:Color
    public let success:Color
    public let successFill:Color
    public let warning:Color
    public let warningFill:Color
    public let error:Color
    public let errorFill:Color
    
    public init(
        accent:Color,
        secondaryAccent:Color,
        primary:Color,
        secondary:Color,
        tertiary: Color,
        background:Color,
        secondaryBackground:Color,
        tertiaryBackground:Color,
        border:Color,
        fill:Color,
        accentFill:Color,
        success:Color,
        successFill:Color,
        warning:Color,
        warningFill:Color,
        error:Color,
        errorFill:Color
    ) {
        self.accent = accent
        self.secondaryAccent = secondaryAccent
        self.primary = primary
        self.secondary = secondary
        self.tertiary = tertiary
        self.background = background
        self.secondaryBackground = secondaryBackground
        self.tertiaryBackground = tertiaryBackground
        self.border = border
        self.fill = fill
        self.accentFill = accentFill
        self.success = success
        self.successFill = successFill
        self.warning = warning
        self.warningFill = warningFill
        self.error = error
        self.errorFill = errorFill
    }
    
}


public struct ThemeEnvironmentKey: EnvironmentKey {
    public static let defaultValue: Theme = .init(
        accent: .pink,
        secondaryAccent: .pink,
        primary: .pink,
        secondary: .pink,
        tertiary: .pink,
        background: .pink,
        secondaryBackground: .pink,
        tertiaryBackground: .pink,
        border: .pink,
        fill: .pink,
        accentFill: .pink,
        success: .pink,
        successFill: .pink,
        warning: .pink,
        warningFill: .pink,
        error: .pink,
        errorFill: .pink
    )
}

extension EnvironmentValues {
    public var theme: Theme {
        get { self[ThemeEnvironmentKey.self] }
        set { self[ThemeEnvironmentKey.self] = newValue }
    }
}

