//
//  DummyVIPERView.swift
//  PuiDemo
//
//  Created by  on 2021/2/21.
//

import UIKit

protocol DummyVIPERView: AnyObject {
}

final class DummyVIPERViewController: UIViewController {
  var presenter: DummyVIPERPresentation!

  static func makeFromStoryboard() -> DummyVIPERViewController {
    let vc = UIStoryboard.loadDummyVIPER()
    return vc
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    presenter.viewDidLoad()
  }
}

extension LoginViewController: LoginView {
}