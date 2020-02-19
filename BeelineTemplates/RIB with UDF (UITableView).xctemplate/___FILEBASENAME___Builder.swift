//___FILEHEADER___

import MBUIKit
import RIBs
import UIAppTools

final class ___VARIABLE_productName___Builder: Builder<EmptyDependency>, ___VARIABLE_productName___Buildable {
  func build(withListener listener: ___VARIABLE_productName___Listener) -> ___VARIABLE_productName___Routing {
    // MARK: - Dependency

    let emptyComponent = EmptyComponent()

    // MARK: - Instantiating

    let viewController = ___VARIABLE_productName___ViewController.instantiateFromStoryboard()
    let presenter = ___VARIABLE_productName___Presenter()
    let interactor = ___VARIABLE_productName___Interactor(presenter: presenter)
    let router = ___VARIABLE_productName___Router(interactor: interactor, viewController: viewController)

    interactor.router = router
    interactor.listener = listener

    // MARK: - Binding
    
    VIPBinder.newBind(view: viewController, interactor: interactor, presenter: presenter)

    return router
  }
}
