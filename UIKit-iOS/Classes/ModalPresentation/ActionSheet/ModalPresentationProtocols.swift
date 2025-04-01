import Foundation

public protocol ModalViewProtocol: AnyObject {
    var presenter: ModalPresenterProtocol? { get set }
    var context: AnyObject? { get set }
}

public protocol ModalPresenterProtocol: AnyObject {
    func hide(view: ModalViewProtocol, animated: Bool)
    func hide(view: ModalViewProtocol, animated: Bool, completion: (() -> Void)?)
}

public extension ModalPresenterProtocol {
    func hide(view: ModalViewProtocol, animated: Bool) {
        hide(view: view, animated: animated, completion: nil)
    }
}

public protocol ModalPresenterDelegate: AnyObject {
    func presenterShouldHide(_ presenter: ModalPresenterProtocol) -> Bool
    func presenterDidHide(_ presenter: ModalPresenterProtocol)
}

public protocol ModalSheetPresenterDelegate: ModalPresenterDelegate {
    func presenterCanDrag(_ presenter: ModalPresenterProtocol) -> Bool
}

public extension ModalPresenterDelegate {
    func presenterShouldHide(_ presenter: ModalPresenterProtocol) -> Bool {
        return true
    }

    func presenterDidHide(_ presenter: ModalPresenterProtocol) {}
}

public extension ModalSheetPresenterDelegate {
    func presenterCanDrag(_ presenter: ModalPresenterProtocol) -> Bool {
        return true
    }
}
