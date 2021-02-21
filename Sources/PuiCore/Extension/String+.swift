//
//  String+.swift
//  ArgumentParser
//
//  Created by sakiyamaK on 2021/02/12.
//

import Foundation
import SwiftShell

extension String {
  fileprivate struct DateComponent {
    let year: Int
    let month: Int
    let day: Int

    var date: String { "\(year)/\(month)/\(day)" }
  }

  func replaceEnvironmentText(prefix: String, targetName: String)  -> String {
    let userName = run("echo $USER").stdout
    let date: DateComponent = { _ -> DateComponent in
      let component = Calendar(identifier: .gregorian).dateComponents([.year, .month, .day], from: Date())
      guard
        let year = component.year,
        let month = component.month,
        let day = component.day
      else {
        fatalError("Can't get system date")
      }
      return DateComponent(year: year, month: month, day: day)
    }(())

    let replacedContent = self
      .replacingOccurrences(of: Const.prefix, with: prefix)
      .replacingOccurrences(of: Const.targetName, with: targetName)
      .replacingOccurrences(of: Const.userName, with: userName)
      .replacingOccurrences(of: Const.dateStr, with: date.date)
      .replacingOccurrences(of: Const.yearStr, with: "\(date.year)")
      .replacingOccurrences(of: Const.monthStr, with: "\(date.month)")
      .replacingOccurrences(of: Const.dayStr, with: "\(date.day)")
    return replacedContent
  }

  var firstUpper: String {
    self.prefix(1).uppercased() + self.dropFirst()
  }
}
