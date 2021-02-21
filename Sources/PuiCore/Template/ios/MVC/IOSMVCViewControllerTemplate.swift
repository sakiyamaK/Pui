import Foundation

struct IOSMVCViewControllerTemplate: ViewControllerTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvc.name + "/ViewController/" }
  var code: String {
"""
//
//  \(Const.prefix)ViewController.swift
//  \(Const.targetName)
//
//  Created by \(Const.userName) on \(Const.yearStr)/\(Const.monthStr)/\(Const.dayStr).
//

import UIKit

final class \(Const.prefix)ViewController: UIViewController {
}
"""
  }
}
