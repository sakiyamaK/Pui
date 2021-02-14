//
//  Helper.swift
//  ArgumentParser
//
//  Created by sakiyamaK on 2021/02/11.
//

import Foundation

enum Const {
  static let prefix: String = "__PREFIX__"
  static let targetName: String = "__TARGET__"
  private static let templateDirName = "./templates/PuiTemplate/"
  static let mvcPath: String = templateDirName + "MVC/"
}

func DLog(_ obj: Any? = nil, file: String = #file, function: String = #function, line: Int = #line) {
  var filename: NSString = file as NSString
  filename = filename.lastPathComponent as NSString
  if let obj = obj {
    print("[File:\(filename) Func:\(function) Line:\(line)] : \(obj)")
  } else {
    print("[File:\(filename) Func:\(function) Line:\(line)]")
  }
}

func ALog(_ obj: Any? = nil, file: String = #file, function: String = #function, line: Int = #line) {
  var filename: NSString = file as NSString
  filename = filename.lastPathComponent as NSString
  if let obj = obj {
    debugPrint("[File:\(filename) Func:\(function) Line:\(line)] : \(obj)")
  } else {
    debugPrint("[File:\(filename) Func:\(function) Line:\(line)]")
  }
}
