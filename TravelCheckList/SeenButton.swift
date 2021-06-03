//
//  SeenButton.swift
//  TravelCheckList
//
//  Created by Bilgehan KAYA on 4.06.2021.
//

import SwiftUI

struct SeenButton: View {
    
    @Binding var seenOrNot : Bool
    
    var body: some View {
        Button(action: {
            self.seenOrNot.toggle()
        }) {
            Text("Seen / Not Seen")
        }
    }
}

struct SeenButton_Previews: PreviewProvider {
    static var previews: some View {
        //SeenButton(seenOrNot: )
        Text("Test")
    }
}
