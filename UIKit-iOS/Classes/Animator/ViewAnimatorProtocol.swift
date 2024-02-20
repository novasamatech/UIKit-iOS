import UIKit

public protocol ViewAnimatorProtocol {
    var duration: TimeInterval { get }

    func animate(view: UIView, completionBlock: ((Bool) -> Void)?)
}
