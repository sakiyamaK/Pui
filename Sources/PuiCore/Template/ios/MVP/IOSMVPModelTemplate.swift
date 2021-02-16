import Foundation

struct IOSMVPModelTemplate: Template {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvp.name + "/Model/" }
  var fileName: String { Const.prefix + "Model.swift" }
  var code: String {
"""
protocol \(Const.prefix)ModelInput {
}

final class \(Const.prefix)Model: \(Const.prefix)ModelInput {
}
"""
  }
}

