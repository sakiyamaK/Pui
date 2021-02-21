import Foundation

struct IOSMVPViewControllerTemplate: ViewControllerTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvp.name + "/ViewController/" }
  var code: String {
"""
//
//  \(Const.prefix)View.swift
//  \(Const.targetName)
//
//  Created by \(Const.userName) on \(Const.yearStr)/\(Const.monthStr)/\(Const.dayStr).
//

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
