
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
    case .mvp:
      return [
        IOSMVPViewControllerTemplate(), IOSMVPStoryboardTemplate(), 
        IOSMVPViewTemplate(), IOSMVPXibTemplate(), 
        IOSMVPPresenterTemplate(), IOSMVPModelTemplate()
      ]
    case .mvvm:
      return [
        IOSMVVMStoryboardTemplate(), IOSMVVMViewControllerTemplate(),
        IOSMVVMViewTemplate(), IOSMVVMXibTemplate(),
        IOSMVVMViewModelTemplate()
      ]
    case .viper:
      return [
        IOSVIPERViewControllerTemplate(), IOSVIPERStoryboardTemplate(),
        IOSVIPERInteractorTemplate(),
        IOSVIPERPresenterTemplate(),
        IOSVIPEREntityTemplate(),
        IOSVIPERRouterTemplate()
      ]
    }
  }

  var name: String {
    self.rawValue.uppercased()
  }
}
