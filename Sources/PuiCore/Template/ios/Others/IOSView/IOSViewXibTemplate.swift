import Foundation

struct IOSViewXibTemplate: XibTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.view.name + "/View/" }
}
