import Foundation

public struct ShoppingListItem: Hashable {
    
    // MARK: - Properties
    
    public let id: String
    public let name: String
    public let items: [String]?
    public let details: String
    
    // MARK: - Initializer
    
    public init(
        name: String,
        items: [String]? = nil
    ) {
        self.name = name
        self.items = items
        self.id = UUID().uuidString
        self.details = items?.joined(separator: ", ") ?? "Empty list"
    }
}
