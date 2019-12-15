//___FILEHEADER___

import RIBs
import RxCocoa
import RxSwift
import UIAppTools

final class ___VARIABLE_productName___ViewController: UIViewController, ___VARIABLE_productName___ViewControllable {
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    private func initialSetup() {}
}

// MARK: - BindableView

extension ___VARIABLE_productName___ViewController: BindableView {
    func getOutput() -> ___VARIABLE_productName___ViewOutput {
        return ___VARIABLE_productName___ViewOutput()
    }
    
    func bindWith(_ input: ___VARIABLE_productName___PresenterOutput) {}
}

// MARK: - RibStoryboardInstantiatable

extension ___VARIABLE_productName___ViewController: RibStoryboardInstantiatable {}
