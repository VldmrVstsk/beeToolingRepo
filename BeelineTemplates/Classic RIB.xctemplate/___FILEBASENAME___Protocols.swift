//___FILEHEADER___

import RIBs
import RxSwift

// MARK: - Builder

protocol ___VARIABLE_productName___Dependency: Dependency {}

protocol ___VARIABLE_productName___Buildable: Buildable {
  
  /// <#Description#>
  func build(withListener listener: ___VARIABLE_productName___Listener) -> ___VARIABLE_productName___Routing
}

// MARK: - Router

protocol ___VARIABLE_productName___Interactable: Interactable {
  var router: ___VARIABLE_productName___Routing? { get set }
  var listener: ___VARIABLE_productName___Listener? { get set }
}

protocol ___VARIABLE_productName___ViewControllable: ViewControllable {}

// MARK: - Interactor

protocol ___VARIABLE_productName___Routing: ViewableRouting {}

protocol ___VARIABLE_productName___Presentable: Presentable {
  var listener: ___VARIABLE_productName___PresentableListener? { get set }
}

protocol ___VARIABLE_productName___Listener: AnyObject {}

// MARK: - ViewController

protocol ___VARIABLE_productName___PresentableListener: AnyObject {}
