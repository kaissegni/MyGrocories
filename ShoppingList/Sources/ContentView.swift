import SwiftUI
import CommonUI

public struct ContentView: View {
    public init() {}
    @State var items: [String] = []

    public var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("My Lists")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding([.top, .leading])
                
                List(items, id: \.self) { item in
                    Text(item)
                }
                .background(Color.white)
                .listStyle(InsetGroupedListStyle())
                .scrollContentBackground(.hidden)
                VStack(alignment: .leading) {
                    if items.isEmpty {
                        VStack(alignment: .leading, spacing: Margin.large) {
                            Text("Welcome to buy me a pie")
                                .font(.headline)
                                .fontWeight(.bold)
                            Text("Tap the '"+"' icon to create your first list ")
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
        items.append("Item \(items.count + 1)")
    }
}

extension ContentView {
    enum Constants {
        static let addButtonSize: CGFloat = 60.0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
