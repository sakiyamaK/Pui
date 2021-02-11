//
//  FileOperator.swift
//  ArgumentParser
//
//  Created by sakiyamaK on 2021/02/11.
//

import Foundation

public struct FileOperator {
  public let fileManager: Foundation.FileManager

  public init(
    fileManager: Foundation.FileManager
  ) {
    self.fileManager = fileManager
  }

  func read(for path: String) throws -> String {
    let url = URL(fileURLWithPath: path)
    let content = try String(contentsOf: url)
    return content
  }

  func createDirectory(for path: String) throws {
    try fileManager.createDirectory(atPath: path, withIntermediateDirectories: true, attributes: nil)
  }

  func createFile(for path: String) {
    fileManager.createFile(atPath: path, contents: nil, attributes: nil)
  }

  func write(to path: String, content: String) throws {
    try content.write(to: URL(fileURLWithPath: path), atomically: true, encoding: String.Encoding.utf8)
  }
}
