//
//  ControllerTemplate.swift
//  ArgumentParser
//
//  Created by sakiyamaK on 2021/02/11.
//

import Foundation

struct IOSMVCViewControllerTemplate: Template {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvc.name + "/ViewController/" }
  var fileName: String { Const.prefix + "ViewController.swift" }
  var code: String {
"""
import UIKit

final class \(Const.prefix)ViewController: UIViewController {
}
"""
  }
}
