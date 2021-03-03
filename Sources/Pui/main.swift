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
    version: "0.0.6",
    shouldDisplay: true,
    subcommands: [Template.self, Yaml.self, Component.self],
    helpNames: [.long, .short]
  )
}

extension Pui {
  struct Template: ParsableCommand {

    static var configuration = CommandConfiguration(abstract: "Generate template files")

    @Flag(help: "FrontEnd type")
    var front: FrontType = .ios

    @Flag(help: "Architecture type")
    var architecture: ArchitectureType

    mutating func run() throws {
      let core = PuiTemplateCore(front: front, architecture: architecture)
      try core.run()
    }
  }
}

extension Pui {
  struct Yaml: ParsableCommand {

    static var configuration = CommandConfiguration(abstract: "Generate yaml files")

    @Flag(help: "FrontEnd type")
    var front: FrontType = .ios

    @Flag(help: "Architecture type")
    var architecture: ArchitectureType

    @Argument(help: "Target Name")
    var targetName: String = Const.targetName

    mutating func run() throws {
      let core = PuiYamlCore(front: front, architecture: architecture, targetName: targetName)
      try core.run()
    }
  }
}

extension Pui {
  struct Component: ParsableCommand {

    static var configuration = CommandConfiguration(abstract: "Generate component files from Pui.yml")

    @Argument(help: "Template Name")
    var templateName: String

    @Argument(help: "Component Name")
    var componentName: String

    mutating func run() throws {
      let core = PuiComponentCore(templateName: templateName, componentName: componentName)
      try core.run()
    }
  }
}

Pui.main()
