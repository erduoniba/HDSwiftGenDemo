// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum LaunchScreen {
  }
  internal enum Localizable {
    /// good
    internal static var good: String { return L10n.tr("Localizable", "good", fallback: "good") }
    /// Localizable.strings
    ///   HDSwiftGenDemo
    /// 
    ///   Created by denglibing on 2023/8/16.
    internal static var hello: String { return L10n.tr("Localizable", "hello", fallback: "hello") }
  }
  internal enum Main {
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    // 用于App内部切换语言后，更换语言包（zh-Hans和en是要根据项目的proj来选择）
    var res = "zh-Hans"
    if let systemlanguage = UserDefaults.standard.string(forKey: "systemlanguage"), systemlanguage.hasPrefix("en") {
       res = "en"
    }
    let bundle = Bundle(path: Bundle.main.path(forResource: res, ofType: "lproj")!)
    let format = bundle?.localizedString(forKey: key, value: value, table: table) ?? value
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

