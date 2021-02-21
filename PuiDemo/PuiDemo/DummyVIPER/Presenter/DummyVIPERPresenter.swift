//
//  DummyVIPERPresentation.swift
//  PuiDemo
//
//  Created by  on 2021/2/21.
//

import Foundation

protocol DummyVIPERPresentation: AnyObject {
  func viewDidLoad()
}

final class DummyVIPERPresenter {
  private weak var view: DummyVIPERView?
  private let router: DummyVIPERWireframe
  private let interactor: DummyVIPERUsecase

  init(
    view: DummyVIPERView,
    interactor: DummyVIPERUsecase,
    router: DummyVIPERWireframe
  ) {
    self.view = view
    self.interactor = interactor
    self.router = router
  }
}

extension LoginPresenter: DummyVIPERPresentation {
  func viewDidLoad() {
  }
}