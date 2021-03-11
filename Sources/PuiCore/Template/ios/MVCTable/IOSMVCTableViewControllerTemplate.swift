import Foundation

struct IOSMVCTableViewControllerTemplate: ViewControllerTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvc_table.name + "/ViewController/" }
  var code: String {
"""
//
//  \(Const.prefix)ViewController.swift
//  \(Const.targetName)
//
//  Created by \(Const.userName) on \(Const.yearStr)/\(Const.monthStr)/\(Const.dayStr).
//

import UIKit

final class \(Const.prefix)ViewController: UIViewController {

  @IBOutlet private weak var tableView: UITableView! {
    didSet {
    }
  }
}

extension \(Const.prefix)ViewController: UITableViewDelegate {
}

extension \(Const.prefix)ViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    0
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    UITableViewCell()
  }
}
"""
  }
}
