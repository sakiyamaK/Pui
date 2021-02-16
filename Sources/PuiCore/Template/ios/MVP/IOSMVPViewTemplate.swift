import Foundation

struct IOSMVPViewTemplate: Template {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvp.name + "/View/" }
  var fileName: String { Const.prefix + "View.swift" }
  var code: String {
"""
import UIKit

final class \(Const.prefix)View: UIView {
}
"""
  }
}
