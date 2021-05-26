//
//  PuiError.swift
//  ArgumentParser
//
//  Created by sakiyamaK on 2021/02/12.
//

import Foundation

public enum PuiError: Error {
  case notFoundYml(String)
  case notParseYml(String)
}

extension PuiError: LocalizedError {
  public var errorDescription: String? {
    switch self {
    case .notFoundYml(let message): return message
    case .notParseYml(let message): return message
    }
  }
}
