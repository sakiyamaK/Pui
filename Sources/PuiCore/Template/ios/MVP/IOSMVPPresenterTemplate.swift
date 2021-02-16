import Foundation

struct IOSMVPPresenterTemplate: Template {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvp.name + "/Presenter/" }
  var fileName: String { Const.prefix + "Presenter.swift" }
  var code: String {
"""
import Foundation

protocol \(Const.prefix)PresenterInput {
}

protocol \(Const.prefix)PresenterOutput: AnyObject {
}

final class \(Const.prefix)Presenter: \(Const.prefix)PresenterInput {

  private weak var view: \(Const.prefix)PresenterOutput!
  private var model: \(Const.prefix)ModdelInput!

  init(view: \(Const.prefix)PresenterOutput, model: \(Const.prefix)ModdelInput) {
    self.view = view
    self.model = model
  }
}
"""
  }
}