
import Foundation
import ArgumentParser

public enum FrontType: String, EnumerableFlag {
  case ios

  var name: String {
    self.rawValue
  }
}
