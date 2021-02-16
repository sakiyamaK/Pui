import Foundation

struct IOSMVPViewControllerTemplate: Template {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvp.name + "/ViewController/" }
  var fileName: String { Const.prefix + "ViewController.swift" }
  var code: String {
"""
import UIKit

final class \(Const.prefix)ViewController: UIViewController {
  private var presenter: \(Const.prefix)Presenter!
  func inject(presenter: \(Const.prefix)Presenter) {
    self.presenter = presenter
  }
}
"""
  }
}
