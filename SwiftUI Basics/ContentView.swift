//
//  ContentView.swift
//  SwiftUI Basics
//
//  Created by Naman Alagh on 21/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "house")
                .imageScale(.large)
                .foregroundColor(.orange)
            
            Text("This is sample text. This is more sample text. This is even more sample text.")
                .font(.system(size: 20, weight: .ultraLight, design: .monospaced))
                .foregroundColor(.blue)
                .frame(width: 100, height: 200, alignment: .center)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.1)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
