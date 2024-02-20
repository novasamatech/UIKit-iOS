import Foundation
import UIKit

public protocol Highlightable: AnyObject {
    func set(highlighted: Bool, animated: Bool)
}

extension UILabel: Highlightable {
    public func set(highlighted: Bool, animated: Bool) {
        isHighlighted = highlighted
    }
}

extension UIImageView: Highlightable {
    public func set(highlighted: Bool, animated: Bool) {
        isHighlighted = highlighted
    }
}
