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

          try file.createDirectory(for: Const.mvcPath)

          let mvcCodeFullPath = Const.mvcPath + controller.codeFileName
          file.createFile(for: mvcCodeFullPath)
          try file.write(to: mvcCodeFullPath, content: controller.code)
          let mvcSupoortFullPath = Const.mvcPath + controller.supportFileName
          file.createFile(for: mvcSupoortFullPath)
          try file.write(to: mvcSupoortFullPath, content: controller.supportFile)
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

