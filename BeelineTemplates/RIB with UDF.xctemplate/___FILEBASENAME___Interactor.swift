//___FILEHEADER___

import Core
import RIBs
import RxSwift

final class ___VARIABLE_productName___Interactor: PresentableInteractor<___VARIABLE_productName___Presentable>, ___VARIABLE_productName___Interactable {

    weak var router: ___VARIABLE_productName___Routing?
    weak var listener: ___VARIABLE_productName___Listener?
    
    override init(presenter: ___VARIABLE_productName___Presentable) {
        super.init(presenter: presenter)
    }
    
    override func didBecomeActive() {
        super.didBecomeActive()
    }

    override func willResignActive() {
        super.willResignActive()
    }
}

// MARK: - IOTransformer

extension ___VARIABLE_productName___Interactor: IOTransformer {
    
    func transform(_ input: ___VARIABLE_productName___ViewOutput) -> ___VARIABLE_productName___InteractorOutput {
        return ___VARIABLE_productName___InteractorOutput()
    }
}
