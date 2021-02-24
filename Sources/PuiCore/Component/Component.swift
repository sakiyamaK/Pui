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
    try file.createDirectory(for: generateRootPath)

    let componentPath = (generateRootPath + "/" + componentName).replacingOccurrences(of: "//", with: "/")
    try file.createDirectory(for: componentPath)

    for templateDir in SwiftShell.run(bash: "ls " + templatePath).stdout.split(separator: "\n") {
      DLog(templateDir)

      let componentSubPath = (componentPath + "/" + templateDir).replacingOccurrences(of: "//", with: "/")

      try file.createDirectory(for: componentSubPath)

      let templateSubPath = (templatePath + "/" + templateDir).replacingOccurrences(of: "//", with: "/")
      for templateFileName in SwiftShell.run(bash: "ls " + templateSubPath).stdout.split(separator: "\n") {

        let componentFilePath = (componentSubPath + "/" + templateFileName).replacingOccurrences(of: "//", with: "/")
          .replaceEnvironmentText(prefix: componentName, targetName: targetName ?? "")

        let fileUrl = URL(fileURLWithPath: (templateSubPath + "/" + templateFileName).replacingOccurrences(of: "//", with: "/"))

        let code = try String(contentsOf: fileUrl).replaceEnvironmentText(prefix: componentName, targetName: targetName ?? "")

        try file.write(to: componentFilePath, content: code)
      }
    }
  }
}
