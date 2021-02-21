import Foundation

struct IOSVIPERInteractorTemplate: Template {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.viper.name + "/Interactor/" }
  var fileName: String { Const.prefix + "Interactor.swift" }
  var code: String {
"""
//
//  \(Const.prefix)Interactor.swift
//  \(Const.targetName)
//
//  Created by \(Const.userName) on \(Const.yearStr)/\(Const.monthStr)/\(Const.dayStr).
//

import Foundation

protocol \(Const.prefix)Usecase {
}

final class \(Const.prefix)Interactor {
  init() {
  }
}

extension \(Const.prefix)Interactor: \(Const.prefix)Usecase {
}
"""
  }
}
