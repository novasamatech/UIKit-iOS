import Foundation
import UIKit

public final class SingleSkeleton {
    let position: CGPoint
    let size: CGSize

    private(set) var cornerRadii: CGSize?
    private(set) var cornerRoundingMode: UIRectCorner?

    private(set) var startColor: UIColor?
    private(set) var endColor: UIColor?

    private(set) var direction: Skeleton.Direction = .horizontal
    
    public init(position: CGPoint, size: CGSize) {
        self.position = position
        self.size = size
    }

    public func round(_ cornerRadii: CGSize = CGSize(width: 0.5, height: 0.5),
                      mode: UIRectCorner = .allCorners) -> Self {
        self.cornerRadii = cornerRadii
        self.cornerRoundingMode = mode

        return self
    }

    public func fillStart(_ color: UIColor) -> Self {
        startColor = color

        return self
    }

    public func fillEnd(_ color: UIColor) -> Self {
        endColor = color

        return self
    }
    
    public func direction(_ direction: Skeleton.Direction) -> Self {
        self.direction = direction
        
        return self
    }
}

extension SingleSkeleton: Skeletonable {
    public var skeletons: [Skeleton] {
        return [
            Skeleton(position: position,
                     size: size,
                     cornerRadii: cornerRadii,
                     cornerRoundingMode: cornerRoundingMode,
                     startColor: startColor,
                     endColor: endColor,
                     direction: direction)
        ]
    }
}
