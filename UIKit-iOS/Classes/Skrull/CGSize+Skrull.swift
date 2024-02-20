import Foundation

public extension CGSize {
    func skrullMapX(_ pointX: CGFloat) -> CGFloat {
        return pointX / width
    }

    func skrullMapY(_ pointY: CGFloat) -> CGFloat {
        return pointY / height
    }

    func skrullMap(point: CGPoint) -> CGPoint {
        return CGPoint(x: skrullMapX(point.x), y: skrullMapY(point.y))
    }
}
