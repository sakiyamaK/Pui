//
//  Component.swift
//  ArgumentParser
//
//  Created by sakiyamaK on 2021/02/12.
//

import Foundation
import SwiftShell

struct Component {
  var dirPath: String { "./\(componentName)/" }

  private var componentName: String
  private var templatePath: String
  private var generateRootPath: String
  private var targetName: String?

  init(componentName: String, templatePath: String, generateRootPath: String, targetName: String?) throws {
    self.componentName = componentName
    self.templatePath = templatePath
    self.generateRootPath = generateRootPath
    self.targetName = targetName
  }

  func save(file: FileOperator) throws {
    try file.createDirectory(for: generateRootPath)
    for templateDir in SwiftShell.run(bash: "ls " + templatePath).stdout.split(separator: "\n") {
      let componentPath = generateRootPath + templateDir
      try file.createDirectory(for: componentPath)
      for templateFileName in SwiftShell.run(bash: "ls " + templatePath + "\(templateDir)").stdout.split(separator: "\n") {
        let componentFilePath = String(componentPath + "/" + templateFileName).replaceEnvironmentText(prefix: componentName, targetName: targetName ?? "")
        let fileUrl = URL(fileURLWithPath: templatePath + "/" + templateDir + "/" + templateFileName)
        let code = try String(contentsOf: fileUrl).replaceEnvironmentText(prefix: componentName, targetName: targetName ?? "")
        try file.write(to: componentFilePath, content: code)
      }
    }
  }
}
