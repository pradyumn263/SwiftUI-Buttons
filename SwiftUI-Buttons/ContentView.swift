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
            
        }, label: {
            // What the button looks like
            Text("Hello World")
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .padding(5)
                .overlay(
                    Capsule()
                        .stroke(Color.purple, lineWidth: 2)
                )
            
//                .padding()
//                .foregroundColor(.white)
//                .font(.title)
//                .background(Color.purple)
//                .padding(5)
//                .border(Color.purple, width: 2)

                
        })

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
