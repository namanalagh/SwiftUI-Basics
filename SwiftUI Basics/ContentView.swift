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
            Image(systemName: "house.fill")
                .font(.system(size: 30))
                .foregroundColor(.orange)
            
            Text("This is sample text. This is more sample text. This is even more sample text.")
                .font(.system(size: 20, weight: .ultraLight, design: .monospaced))
                .foregroundColor(.blue)
                .frame(width: 100, height: 200, alignment: .center)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.1)
            
            Circle()
                .trim(from: 0.1, to: 0.9)
                .stroke(Color.primary, lineWidth: 5)
                .frame(width: 100)
            
            RoundedRectangle(cornerRadius: 20.0 )
                .fill(
                    LinearGradient(colors: [Color.orange, Color.purple, Color.blue], startPoint: .bottomLeading, endPoint: .topTrailing)
                )
                .frame(width: 300, height: 100
                )
                .shadow(radius: 10)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
