import Foundation

struct IOSMVVMViewControllerTemplate: ViewControllerTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvvm.name + "/ViewController/" }
  var code: String {
"""
import UIKit
import RxSwift
import RxCocoa

final class \(Const.prefix)ViewController: UIViewController {

  private var viewModel: \(Const.prefix)ViewModel!
  private let disposeBag = DisposeBag()

  override func viewDidLoad() {
    super.viewDidLoad()
    setupViewModel()
  }
}

private extension \(Const.prefix)ViewController {
  func setupViewModel() {
    viewModel = .init(
      input: \(Const.prefix)ViewModel.Input(),
      depedency: \(Const.prefix)ViewModel.Depedency()
    )
  }
}
"""
  }
}
