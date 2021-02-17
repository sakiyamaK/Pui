import Foundation

struct IOSMVVMViewModelTemplate: Template {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvvm.name + "/ViewModel/" }
  var fileName: String { Const.prefix + "ViewModel.swift" }
  var code: String {
"""
import RxSwift
import RxCocoa


final class \(Const.prefix)ViewModel {

  struct Input {
  }

  struct Dependency {
  }

  private let disposeBag = DisposeBag()

  init(input: Input, dependency: Dependency) {
  }
}
"""
  }
}

