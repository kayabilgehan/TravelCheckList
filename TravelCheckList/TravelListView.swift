import SwiftUI

struct TravelListView: View {
    var body: some View {
        NavigationView{
            List(travelArray) { travel in
                NavigationLink(destination: TravelDetailView(chosenTravel: travel)){
                    Text(travel.name)
                }
            }
        }
    }
}

struct TravelListView_Previews: PreviewProvider {
    static var previews: some View {
        TravelListView()
    }
}
