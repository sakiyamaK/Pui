import Foundation
import SwiftShell

public struct PuiSetupYamlCore {
  let file = FileOperator(fileManager: FileManager.default)

  var front: FrontType
  var architecture: ArchitectureType

  public init(front: FrontType, architecture: ArchitectureType) {
    self.front = front
    self.architecture = architecture
  }

  public func run() throws {
    file.createFile(for: "./" + Const.yamlFileName)
    let content = [
      "\(YamlProperty.defaultTemplateDirectoryPath.keyName): ./\(Const.templateDirName)/\(front.name)/",
      "\(YamlProperty.target.keyName): \(Const.targetName)\n",
      "\(architecture.name):",
      "  \(YamlProperty.generateRootPath.keyName): ./"
    ].joined(separator: "\n")
    
    try file.write(to: "./" + Const.yamlFileName, content: content)
  }
}

