
import Foundation
import ArgumentParser

public enum ArchitectureType: String, EnumerableFlag {
  case mvc
  case mvp
  case mvvm
  case viper

  var templates: [Template] {
    switch self {
    case .mvc:
      return [IOSMVCViewControllerTemplate(), IOSMVCStoryboardTemplate(), IOSMVCViewTemplate(), IOSMVCXibTemplate()]
    default:
      return [IOSMVCViewControllerTemplate(), IOSMVCStoryboardTemplate(), IOSMVCViewTemplate(), IOSMVCXibTemplate()]
    }
  }

  var name: String {
    self.rawValue.uppercased()
  }
}
