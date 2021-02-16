//
//  BuilderTemplate.swift
//  ArgumentParser
//
//  Created by sakiyamaK on 2021/02/11.
//

import Foundation

struct IOSMVCViewTemplate: Template {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvc.name + "/View/" }
  var fileName: String { Const.prefix + "View.swift" }
  var code: String {
"""
import UIKit

final class \(Const.prefix)View: UIView {
}
"""
  }
}
