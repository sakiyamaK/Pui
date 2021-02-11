//
//  Component.swift
//  ArgumentParser
//
//  Created by sakiyamaK on 2021/02/12.
//

import Foundation

struct Component {
  var dirPath: String { "./\(componentName)/" }
  var supportFileName: String { template.supportFileName.replacingOccurrences(of: Const.prefix, with: componentName) }

  var supportFile: String = ""

  var codeFileName: String { template.codeFileName.replacingOccurrences(of: Const.prefix, with: componentName) }

  var code: String = ""

  private var componentName: String
  private var template: Template

  init(componentName: String, template: Template, file: FileOperator) throws {
    self.componentName = componentName
    self.template = template
    supportFile = try file.read(for: template.dirPath + template.supportFileName).replaceEnvironmentText(prefix: componentName, targetName: Const.targetName)
    code = try file.read(for: template.dirPath + template.codeFileName).replaceEnvironmentText(prefix: componentName, targetName: Const.targetName)

  }
}
