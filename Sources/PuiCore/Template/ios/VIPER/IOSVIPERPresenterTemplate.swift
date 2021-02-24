import Foundation

struct IOSVIPERPresenterTemplate: Template {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.viper.name + "/Presenter/" }
  var fileName: String { Const.prefix + "Presenter.swift" }
  var code: String {
"""
//
//  \(Const.prefix)Presentation.swift
//  \(Const.targetName)
//
//  Created by \(Const.userName) on \(Const.yearStr)/\(Const.monthStr)/\(Const.dayStr).
//

import Foundation

protocol \(Const.prefix)Presentation: AnyObject {
  func viewDidLoad()
}

final class \(Const.prefix)Presenter {
  private weak var view: \(Const.prefix)View?
  private let router: \(Const.prefix)Wireframe
  private let interactor: \(Const.prefix)Usecase

  init(
    view: \(Const.prefix)View,
    interactor: \(Const.prefix)Usecase,
    router: \(Const.prefix)Wireframe
  ) {
    self.view = view
    self.interactor = interactor
    self.router = router
  }
}

extension \(Const.prefix)Presenter: \(Const.prefix)Presentation {
  func viewDidLoad() {
  }
}
"""
  }
}
