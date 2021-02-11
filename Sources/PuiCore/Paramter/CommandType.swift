//
//  CommandType.swift
//  PuiCore
//
//  Created by sakiyamaK on 2021/02/11.
//

import Foundation
import ArgumentParser

public enum CommandType: EnumerableFlag {
  case setup
  case generate
  public static func name(for value: CommandType) -> NameSpecification {
    switch value {
    case .setup:
      return [.customShort("s"), .long]
    case .generate:
      return [.customShort("g"), .long]
    }
  }
}
