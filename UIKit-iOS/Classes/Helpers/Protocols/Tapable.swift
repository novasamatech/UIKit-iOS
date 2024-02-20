import Foundation

public typealias TapableClosure = () -> Void

public protocol TapableProtocol {
    var action: TapableClosure? { get }
}
