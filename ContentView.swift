import SwiftUI

struct Class: Identifiable {
    let id = UUID()
    let className: String
    let period: Int
}

let schedule = [
    Class(className: "", period: 1),
    Class(className: "", period: 2),
    Class(className: "", period: 3),
    Class(className: "", period: 4),
    Class(className: "", period: 5),
    Class(className: "", period: 6),
    Class(className: "", period: 7),
    Class(className:"", period: 8)
]

struct ContentView: View {
    var body: some View {
        Table(schedule) {
            TableColumn("Class", value: \.className)
            TableColumn("Period") { classInstance in
                Text(String(classInstance.period))
            }
        }
    }
}


//struct ContentViewForcePreview: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
