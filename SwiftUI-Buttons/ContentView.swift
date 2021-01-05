//
//  ContentView.swift
//  SwiftUI-Buttons
//
//  Created by Pradyumn Shukla on 04/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button (action: {
            // What to perform
            print("Delete button tapped!")
        }, label: {
            // What the button looks like
            Label (
                title: {  Text("Delete")
                    .fontWeight(.semibold)
                    .font(.title) },
                icon: { Image(systemName: "trash")
                    .font(.largeTitle) }
            )
            .padding()
            .foregroundColor(.white)
            .background(Color.red)
            .clipShape(Capsule())
            
            
                
        })

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
