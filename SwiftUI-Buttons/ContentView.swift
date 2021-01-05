//
//  ContentView.swift
//  SwiftUI-Buttons
//
//  Created by Pradyumn Shukla on 04/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
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
                })
            .buttonStyle(GradientFullWidthButton())
            
            Button (action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "plus")
            })
            .buttonStyle(RotationButtonStyle())
        }
        
    }
}

struct GradientFullWidthButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.primary)
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("Green")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .clipShape(Capsule())
            .padding(.horizontal)
            .shadow(radius: 10)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
    }
}

struct RotationButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .font(.largeTitle)
            .foregroundColor(.white)
            .background(Color.blue)
            .clipShape(Circle())
            .rotationEffect(configuration.isPressed ? .degrees(45) : .zero)
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
