import Foundation
import UIKit

public struct Skeleton {
    var position: CGPoint
    var size: CGSize
    var cornerRadii: CGSize?
    var cornerRoundingMode: UIRectCorner?
    var startColor: UIColor?
    var endColor: UIColor?
    var direction: Direction
}

public extension Skeleton {
    enum Direction {
        case horizontal
        case vertical
        case diagonalLeftToRight
        case diagonalRightToLeft
        case custom(start: CGPoint, end: CGPoint)
    }
}
