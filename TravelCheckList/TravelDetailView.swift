import SwiftUI

struct TravelDetailView: View {
    
    var chosenTravel: TravelCheckModel
    @State var seen = false
    
    var body: some View {
        VStack{
            Text(chosenTravel.name)
                .font(.largeTitle)
                .padding()
                .foregroundColor(self.seen ? .blue : .black)
            Text(chosenTravel.description)
                .padding()
                .font(.title)
            SeenButton(seenOrNot: $seen)
        }
    }
}

struct TravelDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TravelDetailView(chosenTravel: travelCheck1)
    }
}
