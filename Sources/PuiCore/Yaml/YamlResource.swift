//
//  YamlResource.swift
//  Kuri
//
//  Created by kingkong999yhirose on 2016/12/19.
//  Copyright © 2016年 kingkong999yhirose. All rights reserved.
//

import Foundation
import Yaml
import SwiftShell

enum ComponentYamlProperty: String {
    case Target
    case DefaultTemplateDirectoryPath
    case GenerateRootPath
}

public struct YamlResource {

  private static let ymlFileName = "Pui.yml"
  fileprivate static func findYamlFile() -> URL? {
    let path = run(bash: "ls | grep \(ymlFileName)").stdout
    DLog(path)
    return URL(fileURLWithPath: path)
  }
  
  fileprivate static func readYamlContent(for fileUrl: URL) throws -> String {
    try String(contentsOf: fileUrl)
  }
  
  public static func loadYamlIfPossible() throws -> Yaml {
    guard let yamlFile = findYamlFile() else {
      throw PuiError.notFoundYml("Can't find \(ymlFileName), please prepare this file.")
    }
    do {
      DLog("\(yamlFile)")
      let yamlContent = try readYamlContent(for: yamlFile)
      DLog("\(yamlContent)")
      let yaml = try Yaml.load(yamlContent)
      DLog("\(yaml)")
      return yaml
    } catch {
      throw PuiError.notParseYml("Can't load yaml file.")
    }
  }
}
