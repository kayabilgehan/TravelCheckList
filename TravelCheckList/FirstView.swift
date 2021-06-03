import SwiftUI

struct FirstView: View {
    @State var shown = false
    @State var number = 3
    
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    self.number -= 1
                }) {
                    Text("-")
                }.padding()
                Text(String(number))
                    .padding()
                Button(action: {
                    self.number += 1
                }) {
                    Text("+")
                }.padding()
            }
            
            Button(action: {
                if self.number > 5 {
                    self.shown.toggle()
                }
                else {
                    
                }                
            }) {
                Text("Go to 2nd")
            }.padding()
            .sheet(isPresented: $shown) { () -> SecondView in
                return SecondView()
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
