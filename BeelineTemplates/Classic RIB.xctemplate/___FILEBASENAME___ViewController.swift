//___FILEHEADER___

import RIBs
import RxSwift
import UIAppTools

final class ___VARIABLE_productName___ViewController: UIViewController, ___VARIABLE_productName___Presentable, ___VARIABLE_productName___ViewControllable {

    weak var listener: ___VARIABLE_productName___PresentableListener?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    private func initialSetup() {}
}

// MARK: - RibStoryboardInstantiatable

extension ___VARIABLE_productName___ViewController: RibStoryboardInstantiatable {}
