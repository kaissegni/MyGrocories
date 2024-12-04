import SwiftUI
import CommonUI
import Common
import Navigation

public struct ShoppingListView: View {

    init(_ coordinator: ShoppingListCoordinator? = nil) {
        self.coordinator = coordinator
    }

    @State var items: [ShoppingListItem] = []
    weak var coordinator: ShoppingListCoordinator?

    public var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Your grocories")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding([.top, .leading])
                
                List(items, id: \.self) { item in
                    let isEmptyList = item.items?.isEmpty ?? true
                    VStack(alignment: .leading) {
                        Text(item.name)
                        Text(item.details)
                            .font(isEmptyList ? .caption : .caption2)
                            .foregroundStyle(Color(isEmptyList ? .gray : .black))
                    }
                    .onTapGesture {
                        coordinator?.coordinateToShoppingListDetails()
                    }
                }
                .background(Color.white)
                .listStyle(InsetGroupedListStyle())
                .scrollContentBackground(.hidden)
                VStack(alignment: .leading) {
                    if items.isEmpty {
                        VStack(alignment: .leading, spacing: Margin.large) {
                            Text("Welcome to My Groceries")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Tap the \("+") icon to create your first list")
                                .font(.subheadline)
                        }
                        .padding()
                    }
                    HStack {
                        Spacer()
                        Button(action: addItem) {
                            Image(systemName: "plus")
                                .font(.title)
                                .frame(width: Constants.addButtonSize, height: Constants.addButtonSize)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .clipShape(Circle())
                                .shadow(
                                    color: .gray.opacity(0.5), radius: 5, x: 0, y: 2
                                )
                        }
                        .padding()
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    private func addItem() {
        items.append(ShoppingListItem(name: "Shopping List \(items.count + 1)"))
        coordinator?.coordinateToShoppingListDetails()
    }
}

extension ShoppingListView {
    enum Constants {
        static let addButtonSize: CGFloat = 60.0
    }
}

struct ShoppingListView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingListView()
    }
}
