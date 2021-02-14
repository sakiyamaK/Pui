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
      #if DEBUG
      let url = URL(fileURLWithPath: "/Users/sakiyamak/Documents/github/ios/001_Library/Pui/Pui.yml")
      return url
      #else
      let path = run("ls | grep \(ymlFileName)").stdout
      return URL(fileURLWithPath: path)
      #endif
    }
    
    fileprivate static func readYamlContent(for fileUrl: URL) throws -> String {
      try String(contentsOf: fileUrl)
    }
    
    public static func loadYamlIfPossible() throws -> Yaml {
      guard let yamlFile = findYamlFile() else {
        throw PuiError.notFoundYml("Can't find \(ymlFileName), please prepare this file.")
      }
      do {
        let yamlContent = try readYamlContent(for: yamlFile)
        let yaml = try Yaml.load(yamlContent)
        return yaml
      } catch {
        throw PuiError.notParseYml("Can't load yaml file.")
      }
    }
}
