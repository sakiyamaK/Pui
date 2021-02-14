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
      .replacingOccurrences(of: "__PREFIX__", with: prefix)
      .replacingOccurrences(of: "__TARGET__", with: targetName)
      .replacingOccurrences(of: "__USERNAME__", with: userName)
      .replacingOccurrences(of: "__DATE__", with: date.date)
      .replacingOccurrences(of: "__YEAR__", with: "\(date.year)")
      .replacingOccurrences(of: "__MONTH__", with: "\(date.month)")
      .replacingOccurrences(of: "__DAY__", with: "\(date.day)")
    return replacedContent
  }

}
