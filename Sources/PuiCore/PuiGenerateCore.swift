import Foundation
import SwiftShell

public struct PuiGenerateCore {
  let file = FileOperator(fileManager: FileManager.default)

  var templateName: String
  var componentName: String

  public init(templateName: String, componentName: String) {
    self.templateName = templateName
    self.componentName = componentName
  }

  public func run() throws {

    let yaml = try YamlResource.loadYamlIfPossible()
    guard
      let templateDirPath = yaml[.string(YamlProperty.defaultTemplateDirectoryPath.keyName)].string,
      let targetName = yaml[.string(YamlProperty.target.keyName)].string,
      let generateRootPath = yaml[.string(templateName)][.string(YamlProperty.generateRootPath.keyName)].string else {
      return
    }

    let component = Component(componentName: componentName,
                              templatePath: templateDirPath + templateName + "/",
                              generateRootPath: generateRootPath,
                              targetName: targetName)
    try component.save(file: file)
  }
}

