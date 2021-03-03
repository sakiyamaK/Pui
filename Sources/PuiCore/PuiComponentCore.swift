import Foundation
import SwiftShell

public struct PuiComponentCore {
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
      let targetName = yaml[.string(templateName)][.string(YamlProperty.target.keyName)].string,
      let templateDirPath = yaml[.string(templateName)][.string(YamlProperty.templateDirectoryPath.keyName)].string,
      let generateRootPath = yaml[.string(templateName)][.string(YamlProperty.generateRootPath.keyName)].string else {
      print("invalid yaml file")
      return
    }

    let component = Component(componentName: componentName,
                              templatePath: templateDirPath,
                              generateRootPath: generateRootPath,
                              targetName: targetName)
    try component.save(file: file)
    print("generate \(componentName) component")
  }
}

