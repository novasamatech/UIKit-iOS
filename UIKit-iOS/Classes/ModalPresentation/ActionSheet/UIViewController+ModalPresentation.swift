import Foundation

private struct Constants {
    static var factoryKey: String = "io.novasama.ui.modal.presentation.factory"
}

public extension UIViewController {
    var modalTransitioningFactory: UIViewControllerTransitioningDelegate? {
        get {
            transitioningDelegate
        }

        set {
            transitioningDelegate = newValue

            withUnsafePointer(to: &Constants.factoryKey) {
                objc_setAssociatedObject(
                    self,
                    $0,
                    newValue,
                    .OBJC_ASSOCIATION_RETAIN
                )
            }
        }
    }
}
