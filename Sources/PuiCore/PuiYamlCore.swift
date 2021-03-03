import Foundation
import SwiftShell

public struct PuiYamlCore {
  let file = FileOperator(fileManager: FileManager.default)

  var front: FrontType
  var architecture: ArchitectureType
  var targetName: String

  public init(front: FrontType, architecture: ArchitectureType, targetName: String) {
    self.front = front
    self.architecture = architecture
    self.targetName = targetName
  }

  public func run() throws {

    let addContent = [
      "\(architecture.name):",
      "  \(YamlProperty.target.keyName): \(self.targetName)",
      "  \(YamlProperty.templateDirectoryPath.keyName): ./\(Const.templateDirName)/\(front.name)/\(architecture.name)",
      "  \(YamlProperty.generateRootPath.keyName): ./"
    ].joined(separator: "\n")

    if let content = try? file.read(for: "./" + Const.yamlFileName) {
      let newContent = content.count == 0 ? addContent : content + "\n\n" + addContent
      try file.write(to: "./" + Const.yamlFileName, content: newContent)
      print("update \(Const.yamlFileName)")
    } else {
      file.createFile(for: "./" + Const.yamlFileName)
      try file.write(to: "./" + Const.yamlFileName, content: addContent)
      print("create \(Const.yamlFileName)")
    }
  }
}

