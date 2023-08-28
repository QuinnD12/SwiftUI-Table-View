import SwiftUI

struct Class: Identifiable {
    let id = UUID()
    let className: String
    let period: Int
}

let schedule = [
    Class(className: "Math", period: 1),
    Class(className: "Reading", period: 2),
    Class(className: "Writing", period: 3),
    Class(className: "Chemistry", period: 4),
    Class(className: "Biology", period: 5),
    Class(className: "Gym", period: 6),
    Class(className: "Study Hall", period: 7),
    Class(className:"History", period: 8)
]

struct ContentView: View {
    var body: some View {
        List {
            HStack {
                Text("Class")
                    .font(.title)
                    .bold()
                Spacer()
                Text("Period")
                    .font(.title)
                    .bold()
            }
            
            ForEach(schedule) { classInstance in
                HStack {
                    Text(classInstance.className)
                    Spacer()
                    Text(String(classInstance.period))
                }
            }
        }
    }
}

struct ContentViewForcePreview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
