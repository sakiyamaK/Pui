import Foundation
import PuiCore
// import PuiGenerateCore
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
    subcommands: [Setup.self, Generate.self],
    helpNames: [.long, .short]
  )

  // @Flag(help: "Set Command type")
  // var command: CommandType

  // @Flag(help: "Set Architecture type if command equal to setup")
  // var architecture: ArchitectureType = .mvc

  // @Argument(help: "Set TemplateName if command equal to generate")
  // var templateName: String = ""

  // @Argument(help: "Set ComponentName if command equal to generate")
  // var componentName: String = ""

  // func run() throws {
  //   let core = PuiCore(command: command, architecture: architecture, templateName: templateName, componentName: componentName)
  //   try core.run()
  // }
}

extension Pui {
  struct Setup: ParsableCommand {
    static var configuration = CommandConfiguration(abstract: "Generate template files")

    @Flag(help: "FrontEnd type")
    var front: FrontType = .ios 

    @Flag(help: "Architecture type")
    var architecture: ArchitectureType

    @Flag(help: "File type")
    var fileType: FileType

    mutating func run() throws {
      switch fileType {
        case .template:
          let core = PuiSetupTemplateCore(front: front, architecture: architecture)
          try core.run()
        case .yaml:
          let core = PuiSetupYamlCore(front: front, architecture: architecture)
          try core.run()
      }
    }
  }
}

extension Pui {
  struct Generate: ParsableCommand {
    static var configuration = CommandConfiguration(abstract: "Generate component files from Pui.yml")

    @Argument(help: "Template Name")
    var templateName: String

    @Argument(help: "Component Name")
    var componentName: String

    mutating func run() throws {
      let core = PuiGenerateCore(templateName: templateName, componentName: componentName)
      try core.run()
    }
  }
}

Pui.main()
