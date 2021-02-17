import Foundation

struct IOSMVCViewTemplate: ViewTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvc.name + "/View/" }
}
