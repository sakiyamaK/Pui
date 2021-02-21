import Foundation

protocol DummyMVPPresenterInput {
}

protocol DummyMVPPresenterOutput: AnyObject {
}

final class DummyMVPPresenter: DummyMVPPresenterInput {

  private weak var view: DummyMVPPresenterOutput!
  private var model: DummyMVPModdelInput!

  init(view: DummyMVPPresenterOutput, model: DummyMVPModdelInput) {
    self.view = view
    self.model = model
  }
}