//
//  DummyVIPERRouter.swift
//  PuiDemo
//
//  Created by  on 2021/2/21.
//

import UIKit

protocol DummyVIPERWireframe: AnyObject {
}

final class DummyVIPERRouter {
  private unowned let viewController: UIViewController

  private init(viewController: UIViewController) {
    self.viewController = viewController
  }

  static func assembleModules() -> UIViewController {
    let view = DummyVIPERViewController.makeFromStoryboard()
    let interactor = DummyVIPERInteractor()
    let router = DummyVIPERRouter(viewController: view)
    let presenter = DummyVIPERPresenter(
      view: view,
      interactor: interactor,
      router: router
    )

    view.presenter = presenter

    return view
  }
}

extension DummyVIPERRouter: DummyVIPERWireframe {
}

extension UIStoryboard {
  static func loadDummyVIPER() -> DummyVIPERViewController {
    UIStoryboard(name: "DummyVIPER", bundle: nil).instantiateInitialViewController() as! DummyVIPERViewController 
  }
}