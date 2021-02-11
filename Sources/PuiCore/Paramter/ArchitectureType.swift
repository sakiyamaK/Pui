
import Foundation
import ArgumentParser

public enum ArchitectureType: EnumerableFlag {
  case mvc
  case mvp
  case mvvm
  case viper

  var templates: [Template] {
    switch self {
    case .mvc:
      return [MVCViewControllerTemplate(), MVCViewTemplate()]
    default:
      return [MVCViewControllerTemplate(), MVCViewTemplate()]
    }
  }
}
