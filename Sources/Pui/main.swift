import Foundation
import PuiCore
import Dispatch
import ArgumentParser

struct RuntimeError: Error, CustomStringConvertible {
  var description: String
  init(_ description: String) {
    self.description = description
  }
}

struct Pui: ParsableCommand {
  static var configuration = CommandConfiguration(
    commandName: "pui",
    abstract: "",
    discussion: """
        
        """,
    version: "1.0.0",
    shouldDisplay: true,
    helpNames: [.long, .short]
  )

  @Flag(help: "Set Command type")
  var command: CommandType

  @Flag(help: "Set Architecture type if command equal to setup")
  var architecture: ArchitectureType = .mvc

  @Argument(help: "Set ComponentName if command equal to generate")
  var templateName: String = ""

  @Argument(help: "Set ComponentName if command equal to generate")
  var componentName: String = ""

  func run() throws {
    let core = PuiCore(command: command, architecture: architecture, templateName: templateName, componentName: componentName)
    try core.run()
  }
}

Pui.main()
