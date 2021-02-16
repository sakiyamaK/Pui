import Foundation
import SwiftShell

public struct PuiSetupTemplateCore {
  let file = FileOperator(fileManager: FileManager.default)

  var front: FrontType
  var architecture: ArchitectureType

  public init(front: FrontType, architecture: ArchitectureType) {
    self.front = front
    self.architecture = architecture
  }

  public func run() throws {
    let templates: [Template] = architecture.templates
    for template in templates {
      try template.save(file: file)
    }
    print("generate \(front)-\(architecture)-templates")
  }
}

