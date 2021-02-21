import Foundation

struct IOSVIPERRouterTemplate: Template {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.viper.name + "/Router/" }
  var fileName: String { Const.prefix + "Router.swift" }
  var code: String {
"""
//
//  \(Const.prefix)Router.swift
//  \(Const.targetName)
//
//  Created by \(Const.userName) on \(Const.yearStr)/\(Const.monthStr)/\(Const.dayStr).
//

import UIKit

protocol \(Const.prefix)Wireframe: AnyObject {
}

final class \(Const.prefix)Router {
  private unowned let viewController: UIViewController

  private init(viewController: UIViewController) {
    self.viewController = viewController
  }

  static func assembleModules() -> UIViewController {
    let view = \(Const.prefix)ViewController.makeFromStoryboard()
    let interactor = \(Const.prefix)Interactor()
    let router = \(Const.prefix)Router(viewController: view)
    let presenter = \(Const.prefix)Presenter(
      view: view,
      interactor: interactor,
      router: router
    )

    view.presenter = presenter

    return view
  }
}

extension \(Const.prefix)Router: \(Const.prefix)Wireframe {
}

extension UIStoryboard {
  static func load\(Const.prefix)() -> \(Const.prefix)ViewController {
    UIStoryboard(name: "\(Const.prefix)", bundle: nil).instantiateInitialViewController() as! \(Const.prefix)ViewController 
  }
}
"""
  }
}
