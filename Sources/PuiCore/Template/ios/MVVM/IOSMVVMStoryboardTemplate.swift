import Foundation

struct IOSMVVMStoryboardTemplate: StoryboardTemplate {
  var dirPath: String { "./" + Const.templateDirName + "/" + FrontType.ios.name + "/" + ArchitectureType.mvvm.name + "/ViewController/" }
}
