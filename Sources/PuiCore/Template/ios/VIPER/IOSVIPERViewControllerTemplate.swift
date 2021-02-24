import Foundation

struct IOSVIPERViewControllerTemplate: ViewControllerTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.viper.name + "/View/" }
  var code: String {
"""
//
//  \(Const.prefix)View.swift
//  \(Const.targetName)
//
//  Created by \(Const.userName) on \(Const.yearStr)/\(Const.monthStr)/\(Const.dayStr).
//

import UIKit

protocol \(Const.prefix)View: AnyObject {
}

final class \(Const.prefix)ViewController: UIViewController {
  var presenter: \(Const.prefix)Presentation!

  static func makeFromStoryboard() -> \(Const.prefix)ViewController {
    let vc = UIStoryboard.load\(Const.prefix)()
    return vc
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    presenter.viewDidLoad()
  }
}

extension \(Const.prefix)ViewController: \(Const.prefix)View {
}
"""
  }
}
