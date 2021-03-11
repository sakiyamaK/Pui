
import Foundation
import ArgumentParser

public enum ArchitectureType: String, EnumerableFlag {
  case mvc
  case mvc_table
  case mvc_collection
  case mvp
  case mvvm
  case viper

  case view

  var templates: [Template] {
    switch self {
    case .mvc:
      return [IOSMVCViewControllerTemplate(), IOSMVCStoryboardTemplate()]
    case .mvc_table:
      return [IOSMVCTableViewControllerTemplate(), IOSMVCTableStoryboardTemplate()]
    case .mvc_collection:
      return [IOSMVCCollectionViewControllerTemplate(), IOSMVCCollectionStoryboardTemplate()]
    case .mvp:
      return [
        IOSMVPViewControllerTemplate(), IOSMVPStoryboardTemplate(), 
        IOSMVPPresenterTemplate(), IOSMVPModelTemplate()
      ]
    case .mvvm:
      return [
        IOSMVVMStoryboardTemplate(), IOSMVVMViewControllerTemplate(),
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
    case .view:
      return [IOSViewTemplate(), IOSViewXibTemplate()]
    }
  }

  var name: String {
    self.rawValue.uppercased()
  }
}
