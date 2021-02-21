//
//  DummyMVVMView.swift
//  PuiDemo
//
//  Created by  on 2021/2/21.
//

import UIKit
import RxSwift
import RxCocoa

final class DummyMVVMViewController: UIViewController {

  private var viewModel: DummyMVVMViewModel!
  private let disposeBag = DisposeBag()

  override func viewDidLoad() {
    super.viewDidLoad()
    setupViewModel()
  }
}

private extension DummyMVVMViewController {
  func setupViewModel() {
    viewModel = .init(
      input: DummyMVVMViewModel.Input(),
      depedency: DummyMVVMViewModel.Depedency()
    )
  }
}