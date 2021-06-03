import SwiftUI

struct ContentView: View {
    
    @State var characterName = "Luke Skywalker"
    
    var body: some View {
        VStack{
            Text(characterName)
                .padding()
            Button(action: {
                self.characterName = "Yoda"
            }) {
                Text("Change Character")
            }
            
            TextField("Write Here!", text: $characterName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
