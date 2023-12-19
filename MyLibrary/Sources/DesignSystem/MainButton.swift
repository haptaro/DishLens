import SwiftUI

public struct MainButton: View {
    var title: String
    var action: () -> Void
    
    public init(title: String,action: @escaping () -> Void) {
        self.action = action
        self.title = title
    }
    
    public var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                Text(title)
                    .font(.title)
                    .tint(Color.white)
                Spacer()
            }
            .padding()
            .background(Color.color1)
            .clipShape(Capsule())
            .padding()
        })
    }
}


#Preview {
    MainButton(
        title: "Main",
        action: {
            print(">>> Main")
        })
}
