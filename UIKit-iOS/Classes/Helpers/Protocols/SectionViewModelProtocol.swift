import Foundation

public struct SectionViewModel<T> {
    let title: String?
    var items: [T]
}

public extension SectionViewModel {
    var count: Int {
        return items.count
    }
}
