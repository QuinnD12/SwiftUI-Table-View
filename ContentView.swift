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
}


let schedule = [
    Player(name: "Trevor Lawrence", position: .qb),
    Player(name: "Kenneth Walker III", position: .rb),
    Player(name: "Jamaal Williams", position: .rb),
    Player(name: "Garrett Wilson", position: .wr),
    Player(name: "Jaylen Waddle", position: .wr),
    Player(name: "Cole Kmet", position: .te),
    Player(name: "Nico Collins", position: .flex),
    Player(name: "Steelers D/ST", position: .dst),
    Player(name: "Dustin Hopkins", position: .k),
    Player(name: "AJ Cole", position: .p),
    Player(name: "Lions HC", position: .hc)
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
            }
            
            ForEach(schedule) { player in
                HStack {
                    Text(player.name)
                    Spacer()
                    Text(player.position.rawValue)
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
