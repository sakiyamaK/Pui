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

    let addContent = [
      "\(architecture.name):",
      "  \(YamlProperty.target.keyName): \(Const.targetName)",
      "  \(YamlProperty.templateDirectoryPath.keyName): ./\(Const.templateDirName)/\(front.name)/\(architecture.name)",
      "  \(YamlProperty.generateRootPath.keyName): ./"
    ].joined(separator: "\n")

    if let content = try? file.read(for: "./" + Const.yamlFileName) {
      let newContent = content + "\n\n" + addContent
      print(newContent)
      try file.write(to: "./" + Const.yamlFileName, content: newContent)
      print("update \(Const.yamlFileName)")
    } else {
      file.createFile(for: "./" + Const.yamlFileName)
      try file.write(to: "./" + Const.yamlFileName, content: addContent)
      print("create \(Const.yamlFileName)")
    }
  }
}

