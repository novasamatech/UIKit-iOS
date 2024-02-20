import Foundation

public struct ModalAlertPresentationStyle {
    public let backdropColor: UIColor
    public let backgroundColor: UIColor
    public let cornerRadius: CGFloat

    public init(backgroundColor: UIColor,
                backdropColor: UIColor,
                cornerRadius: CGFloat) {
        self.backgroundColor = backgroundColor
        self.backdropColor = backdropColor
        self.cornerRadius = cornerRadius
    }
}
