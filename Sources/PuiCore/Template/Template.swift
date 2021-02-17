import Foundation

protocol Template {
  var dirPath: String { get }
  var fileName: String { get }
  var code: String { get }
  func save(file: FileOperator) throws
}

extension Template {
  func save(file: FileOperator) throws {
    try file.createDirectory(for: dirPath)
    file.createFile(for: dirPath + fileName)
    try file.write(to: dirPath + fileName, content: code)
  }
}