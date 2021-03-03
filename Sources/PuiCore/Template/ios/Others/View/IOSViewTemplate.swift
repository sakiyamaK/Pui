import Foundation

struct IOSViewTemplate: ViewTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.view.name + "/View/" }
}
