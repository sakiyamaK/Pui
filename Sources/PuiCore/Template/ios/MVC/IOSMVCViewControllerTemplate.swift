import Foundation

struct IOSMVCViewControllerTemplate: ViewControllerTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvc.name + "/ViewController/" }
  var code: String {
"""
import UIKit

final class \(Const.prefix)ViewController: UIViewController {
}
"""
  }
}
