//
//  DummyMVPView.swift
//  PuiDemo
//
//  Created by  on 2021/2/21.
//

import UIKit

final class DummyMVPViewController: UIViewController {
  private var presenter: DummyMVPPresenter!
  func inject(presenter: DummyMVPPresenter) {
    self.presenter = presenter
  }
}