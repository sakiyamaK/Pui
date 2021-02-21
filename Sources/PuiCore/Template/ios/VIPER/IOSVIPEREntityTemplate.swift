






import Foundation

struct IOSVIPEREntityTemplate: Template {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.viper.name + "/Entity/" }
  var fileName: String { Const.prefix + "Entity.swift" }
  var code: String {
"""
//
//  \(Const.prefix)Entity.swift
//  \(Const.targetName)
//
//  Created by \(Const.userName) on \(Const.yearStr)/\(Const.monthStr)/\(Const.dayStr).
//

import Foundation

struct \(Const.prefix)Entity: Decodable {
}
"""
  }
}
