import UIKit

public protocol CellViewModelProtocol: ViewModelProtocol {
    var cellType: UITableViewCell.Type { get }
}

public extension CellViewModelProtocol {
    var cellReusableKey: String {
        return cellType.reuseIdentifier
    }
}

