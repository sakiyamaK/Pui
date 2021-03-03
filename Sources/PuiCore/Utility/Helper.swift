//
//  Helper.swift
//  ArgumentParser
//
//  Created by sakiyamaK on 2021/02/11.
//

import Foundation

public enum Const {
  static let prefix: String = "__PREFIX__"
  public static let targetName: String = "__TARGET__"
  static let userName: String = "__USERNAME__"
  static let dateStr: String = "__DATE__"
  static let yearStr: String = "__YEAR__"
  static let monthStr: String =  "__MONTH__"
  static let dayStr: String = "__DAY__"
  static let templateDirName = "templates/PuiTemplate"
  static let yamlFileName: String = "Pui.yml"
}

enum YamlProperty: String {
  case templateDirectoryPath
  case target
  case generateRootPath

  var keyName: String {
    self.rawValue.firstUpper
  }
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
