import Foundation
import SwiftShell

public struct PuiCore {
  let file = FileOperator(fileManager: FileManager.default)

  var command: CommandType
  var architecture: ArchitectureType
  var componentName: String

  public init(command: CommandType, architecture: ArchitectureType, componentName: String) {
    self.command = command
    self.architecture = architecture
    self.componentName = componentName
  }

  public func run() throws {
    let templates: [Template] = architecture.templates
    switch command {
      case .setup:
        DLog("setup")
        for template in templates {
          try file.createDirectory(for: template.dirPath)

          file.createFile(for: template.dirPath + template.codeFileName)
          try file.write(to: template.dirPath + template.codeFileName, content: template.code)

          file.createFile(for: template.dirPath + template.supportFileName)
          try file.write(to: template.dirPath + template.supportFileName, content: template.supportFile)
        }

      case .generate:

        let yaml = try YamlResource.loadYamlIfPossible()
        guard
          let templateDirPath = yaml[.string("DefaultTemplateDirectoryPath")].string,
          let targetName = yaml[.string("Target")].string,
          let generateRootPath = yaml[.string("MVC")][.string("GenerateRootPath")].string else {
          return
        }

        DLog(templateDirPath)
        DLog(targetName)
        DLog(generateRootPath)

        let component = try Component(componentName: componentName,
                                      templatePath: templateDirPath + "MVC/",
                                        generateRootPath: generateRootPath, targetName: targetName)
        try component.save(file: file)

//        for template in templates {
//          let component = try Component(componentName: componentName, template: template, file: file)
//
//        }
    }
  }
}

