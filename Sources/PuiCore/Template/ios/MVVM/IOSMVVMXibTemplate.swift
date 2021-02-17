import Foundation

struct IOSMVVMXibTemplate: XibTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvvm.name + "/View/" }
}
