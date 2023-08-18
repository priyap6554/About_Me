//
//  ContentView.swift
//  About_Me
//
//  Created by scholar on 8/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var  name = "i like food"
    @State private var textTitle = "What is your name?"
    var body: some View {
        VStack {
            //text
            Text("\(textTitle)")
                .font(.title)
            //textfield
            TextField("", text:$name)
                .padding()
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.green, width: 1)
                
            //button
            Button("Submit Button") {
                print(name)
                textTitle = "Welcome \(name)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.green)
      
        }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
