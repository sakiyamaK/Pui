import Foundation

protocol ViewTemplate: Template {
}

extension ViewTemplate {
  var fileName: String { Const.prefix + "View.swift" }
  var code: String {
"""
//
//  \(Const.prefix)View.swift
//  \(Const.targetName)
//
//  Created by \(Const.userName) on \(Const.yearStr)/\(Const.monthStr)/\(Const.dayStr).
//

import UIKit

final class \(Const.prefix)View: UIView {
}
"""
  }
}
