import Foundation

struct IOSMVPXibTemplate: XibTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvp.name + "/View/" }
}
