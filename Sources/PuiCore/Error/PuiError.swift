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
