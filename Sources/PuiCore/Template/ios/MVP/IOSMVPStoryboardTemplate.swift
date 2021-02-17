import Foundation

struct IOSMVPStoryboardTemplate: StoryboardTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvp.name + "/ViewController/" }
}
