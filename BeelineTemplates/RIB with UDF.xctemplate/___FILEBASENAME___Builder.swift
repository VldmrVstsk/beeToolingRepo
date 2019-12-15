//___FILEHEADER___

import MBUIKit
import RIBs
import UIAppTools

final class ___VARIABLE_productName___Builder: Builder<EmptyDependency>, ___VARIABLE_productName___Buildable {
  override init(dependency: EmptyDependency) {
    super.init(dependency: dependency)
  }

  func build(withListener listener: ___VARIABLE_productName___Listener) -> ___VARIABLE_productName___Routing {
    let emptyComponent = EmptyComponent()

    let viewController = ___VARIABLE_productName___ViewController.instantiateFromStoryboard()
    let presenter = ___VARIABLE_productName___Presenter()
    let interactor = ___VARIABLE_productName___Interactor(presenter: presenter)

    VIPBinder.bind(view: viewController, interactor: interactor, presenter: presenter)

    interactor.listener = listener
    return ___VARIABLE_productName___Router(interactor: interactor, viewController: viewController)
  }
}
