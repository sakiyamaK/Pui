import Foundation
import SwiftShell

public struct PuiCore {
  let file = FileOperator(fileManager: FileManager.default)

  var command: CommandType
  var architecture: ArchitectureType
  var templateName: String
  var componentName: String

  public init(command: CommandType, architecture: ArchitectureType, templateName: String, componentName: String) {
    self.command = command
    self.architecture = architecture
    self.templateName = templateName
    self.componentName = componentName
  }

  public func run() throws {
    let templates: [Template] = architecture.templates
    switch command {
      case .setup:
        for template in templates {
          try template.save(file: file)
        }
      case .generate:

        let yaml = try YamlResource.loadYamlIfPossible()
        guard
          let templateDirPath = yaml[.string("DefaultTemplateDirectoryPath")].string,
          let targetName = yaml[.string("Target")].string,
          let generateRootPath = yaml[.string(templateName)][.string("GenerateRootPath")].string else {
          return
        }

        let component = Component(componentName: componentName,
                                  templatePath: templateDirPath + templateName + "/",
                                  generateRootPath: generateRootPath,
                                  targetName: targetName)
        try component.save(file: file)
    }
  }
}

