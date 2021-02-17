import Foundation

struct IOSMVCXibTemplate: XibTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvc.name + "/View/" }
}
