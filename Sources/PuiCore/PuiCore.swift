import Foundation

public struct PuiCore {
  var command: CommandType
  var architecture: ArchitectureType

  public init(command: CommandType, architecture: ArchitectureType) {
    self.command = command
    self.architecture = architecture
  }

  public func run() throws {
    switch command {
      case .setup:
      print("setup")
      switch architecture {
        case .mvc:
          print("mvc")
          let controller = MVCControllerTemplate()
          let file = FileOperator(fileManager: FileManager.default)
          file.createFile(for: "mvc-test.swift")
          try file.write(to: "mvc-test.swift", content: controller.code)
          file.createFile(for: "mvc-test.storyboard")
          try file.write(to: "mvc-test.storyboard", content: controller.storyboard)
        case .mvp:
        print("mvp")
        case .mvvm:
        print("mvvp")
        case .viper:
        print("viper")
      }
      case .generate:
      print("generate")
    }
    // dispatchMain()
  }
}

