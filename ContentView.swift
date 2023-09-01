import SwiftUI

enum Position: String {
    case qb = "QB"
    case rb = "RB"
    case wr = "WR"
    case te = "TE"
    case dst = "D/ST"
    case k = "K"
    case p = "P"
    case hc = "HC"
    case flex = "FLEX"
}

struct Player: Identifiable {
    let id = UUID()
    let name: String
    let position: Position
    let team: String
}


let schedule = [
    Player(name: "Trevor Lawrence", position: .qb, team: "Jacksonville"),
    Player(name: "Kenneth Walker III", position: .rb, team: "Seattle"),
    Player(name: "Jamaal Williams", position: .rb, team: "New Orleans"),
    Player(name: "Garrett Wilson", position: .wr, team: "New York(Jets)"),
    Player(name: "Jaylen Waddle", position: .wr, team: "Miami"),
    Player(name: "Cole Kmet", position: .te, team: "Chicago"),
    Player(name: "Nico Collins", position: .flex, team: "Houston"),
    Player(name: "Steelers D/ST", position: .dst, team: "Pittsburgh"),
    Player(name: "Dustin Hopkins", position: .k, team: "Cleveland"),
    Player(name: "AJ Cole", position: .p, team: "Las Vegas"),
    Player(name: "Lions HC", position: .hc, team: "Detriot")
]

struct ContentView: View {
    var body: some View {
        List {
            HStack {
                Text("Player")
                    .font(.title)
                    .bold()
                Spacer()
                Text("Position")
                    .font(.title)
                    .bold()
                Spacer()
                Text("Team")
                    .font(.title)
                    .bold()
            }
            
            ForEach(schedule) { player in
                ScrollView(.horizontal) {
                    HStack {
                        Text(player.name)
                        Spacer()
                        Text(player.position.rawValue)
                        Spacer()
                        Text(player.team)
                    }
                    .frame(width: 325, height: 25)
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
