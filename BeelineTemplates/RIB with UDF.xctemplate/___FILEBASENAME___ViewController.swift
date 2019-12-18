//___FILEHEADER___

import RIBs
import RxCocoa
import RxSwift
import UIAppTools

final class ___VARIABLE_productName___ViewController: UIViewController, ___VARIABLE_productName___ViewControllable {
  private var presenterOutput: ___VARIABLE_productName___PresenterOutput?
  private let viewOutput = ViewOutput()

  private var underlyingView: View { view as! View }

  override func loadView() {
    view = View()
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    bindIfNeeded()
  }
}

// MARK: - Underlying view

extension ___VARIABLE_productName___ViewController {
  private final class View: UIView {
    let disposeBag = DisposeBag()

    override init(frame: CGRect) {
      super.init(frame: frame)
      initialSetup()
    }
    
    required init?(coder: NSCoder) {
      super.init(coder: coder)
      initialSetup()
    }

    private func initialSetup() {}
  }
}

// MARK: - BindableView

extension ___VARIABLE_productName___ViewController: BindableView {
  func getOutput() -> ___VARIABLE_productName___ViewOutput {
    ___VARIABLE_productName___ViewOutput()
  }

  func bindWith(_ input: ___VARIABLE_productName___PresenterOutput) {
    self.presenterOutput = input
    bindIfNeeded()
  }

  private func bindIfNeeded() {
    guard let input = presenterOutput, isViewLoaded else { return }
    // ...
  }
}

// MARK: - ViewOutput

extension ___VARIABLE_productName___ViewController {
  private struct ViewOutput {}
}

// MARK: - RibStoryboardInstantiatable

extension ___VARIABLE_productName___ViewController: RibStoryboardInstantiatable {}
