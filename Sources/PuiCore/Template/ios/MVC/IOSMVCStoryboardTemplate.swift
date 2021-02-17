import Foundation

struct IOSMVCStoryboardTemplate: StoryboardTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvc.name + "/ViewController/" }
}
