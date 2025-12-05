//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by ca5 on 05/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack(spacing: 50){
                Text("Hello, world!")
                Text("Hello, world!")
            }
            HStack(alignment: .lastTextBaseline){
                Text("Hello, world!")
                Text("Hello, world!")
            }
            ZStack(alignment: .top){
                Text("Hello, world!")
                Text("Hello, world!")
            }
            Spacer()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
