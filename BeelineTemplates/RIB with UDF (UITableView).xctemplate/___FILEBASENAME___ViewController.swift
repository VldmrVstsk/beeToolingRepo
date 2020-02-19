//___FILEHEADER___

import RIBs
import RxCocoa
import RxDataSources
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
    private(set) lazy var dataSource: RxTableViewSectionedAnimatedDataSource<Section> = {
      let makeCellForRowDataSource = TableViewHelper.makeDataSource(view: self)
      let dataSource = RxTableViewSectionedAnimatedDataSource<Section>(configureCell: makeCellForRowDataSource)
      dataSource.animationConfiguration = AnimationConfiguration(insertAnimation: .fade,
                                                                 reloadAnimation: .fade,
                                                                 deleteAnimation: .fade)
      return dataSource
    }()
    let tableView = UITableView()

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
  func getOutput() -> ___VARIABLE_productName___ViewOutput { viewOutput }

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
  private struct ViewOutput: ___VARIABLE_productName___ViewOutput {
    let didTapButton: ControlEvent<Void>

    let _didTapButton = PublishRelay<Void>()

    init() {
      didTapButton = ControlEvent(events: _didTapButton)
    }
  }
}

// MARK: - Section, RowItem

extension ___VARIABLE_productName___ViewController {
  private struct Section: Hashable, AnimatableSectionModelType {
    var title: String?
    var items: [RowItem]

    var identity: Identity

    init(original: Section, items: [RowItem]) {
      self = original
      self.items = items
    }

    init(title: String?, items: [RowItem], identity: Identity) {
      self.title = title
      self.identity = identity
      self.items = items
    }

    typealias Item = RowItem

    enum Identity: Hashable {
      case example
    }
  }

  private enum RowItem: Hashable, IdentifiableType {
    case example

    var identity: String {
      switch self {
      case .example: return ""
      }
    }
  }
}

extension ___VARIABLE_productName___ViewController {
  private enum TableViewHelper: Namespace {
    static func makeDataSource(view: View) -> RxTableViewSectionedAnimatedDataSource<Section>.ConfigureCell {
      return { [unowned view] dataSource, tableView, indexPath, rowItem in 
        switch rowItem {
        case .example: return UITableViewCell()
        }
      }
    }
  }
}

// MARK: - RibStoryboardInstantiatable

extension ___VARIABLE_productName___ViewController: RibStoryboardInstantiatable {}
