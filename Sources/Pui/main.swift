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
  var architecture: ArchitectureType?

  func run() throws {
    let core = PuiCore(command: command, architecture: architecture ?? ArchitectureType.mvc)
    try core.run()
  }
}

Pui.main()
