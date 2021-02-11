import Foundation

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
        print("setup")
        for template in templates {
          try file.createDirectory(for: template.dirPath)

          file.createFile(for: template.dirPath + template.codeFileName)
          try file.write(to: template.dirPath + template.codeFileName, content: template.code)

          file.createFile(for: template.dirPath + template.supportFileName)
          try file.write(to: template.dirPath + template.supportFileName, content: template.supportFile)
        }

      case .generate:
        print("generate \(componentName)")
        guard !componentName.isEmpty else {
          print("component name is empty")
          return
        }
        for template in templates {
          let component = try Component(componentName: componentName, template: template, file: file)

          try file.createDirectory(for: component.dirPath)

          file.createFile(for: component.dirPath + component.codeFileName)
          try file.write(to: component.dirPath + component.codeFileName, content: component.code)

          file.createFile(for: component.dirPath + component.supportFileName)
          try file.write(to: component.dirPath + component.supportFileName, content: component.supportFile)
        }
    }
  }
}

