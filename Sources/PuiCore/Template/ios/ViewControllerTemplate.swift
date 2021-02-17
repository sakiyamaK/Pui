import Foundation

protocol ViewControllerTemplate: Template {
}

extension ViewControllerTemplate {
  var fileName: String { Const.prefix + "ViewController.swift" }
}
