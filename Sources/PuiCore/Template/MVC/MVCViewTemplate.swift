//
//  BuilderTemplate.swift
//  ArgumentParser
//
//  Created by sakiyamaK on 2021/02/11.
//

import Foundation

struct MVCViewTemplate: Template {
  var dirPath: String { Const.mvcPath + "/View/" }
  var fileName: String { Const.prefix + "View.swift" }
  var code: String {
"""
import UIKit

final class \(Const.prefix)View: UIView {
}
"""
  }
}
