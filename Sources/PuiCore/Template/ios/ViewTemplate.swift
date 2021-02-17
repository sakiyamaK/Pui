import Foundation

protocol ViewTemplate: Template {
}

extension ViewTemplate {
  var fileName: String { Const.prefix + "View.swift" }
  var code: String {
"""
import UIKit

final class \(Const.prefix)View: UIView {
}
"""
  }
}