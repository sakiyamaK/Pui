//
//  Component.swift
//  ArgumentParser
//
//  Created by sakiyamaK on 2021/02/12.
//

import Foundation
import SwiftShell

struct Component {

  private var componentName: String
  private var templatePath: String
  private var generateRootPath: String
  private var targetName: String?

  init(componentName: String, templatePath: String, generateRootPath: String, targetName: String?) {
    self.componentName = componentName
    self.templatePath = templatePath
    self.generateRootPath = generateRootPath
    self.targetName = targetName
  }

  func save(file: FileOperator) throws {
    DLog("\(templatePath)")
    DLog("\(generateRootPath)")
    try file.createDirectory(for: generateRootPath)
    let componentPath = generateRootPath + componentName + "/"
    DLog("\(componentPath)")
    try file.createDirectory(for: componentPath)
    for templateDir in SwiftShell.run(bash: "ls " + templatePath).stdout.split(separator: "\n") {
      let componentSubPath = componentPath + templateDir + "/"
      DLog("\(componentSubPath)")
      try file.createDirectory(for: componentSubPath)
      let templateSubPath = templatePath + templateDir + "/"
      for templateFileName in SwiftShell.run(bash: "ls " + templateSubPath).stdout.split(separator: "\n") {
        let componentFilePath = String(componentSubPath + templateFileName)
          .replaceEnvironmentText(prefix: componentName, targetName: targetName ?? "")
        let fileUrl = URL(fileURLWithPath: templateSubPath + "/" + templateFileName)
        let code = try String(contentsOf: fileUrl).replaceEnvironmentText(prefix: componentName, targetName: targetName ?? "")
        DLog("\(componentFilePath)")
        try file.write(to: componentFilePath, content: code)
      }
    }
  }
}
