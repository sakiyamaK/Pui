import Foundation

struct IOSMVCCollectionViewControllerTemplate: ViewControllerTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvc_collection.name + "/ViewController/" }
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

  @IBOutlet private weak var collectionView: UICollectionView! {
    didSet {
    }
  }
}

extension \(Const.prefix)ViewController: UICollectionViewDelegate {

}

extension \(Const.prefix)ViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    0
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    UICollectionViewCell()
  }
}
"""
  }
}
