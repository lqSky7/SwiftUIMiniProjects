//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by ca5 on 05/12/25.
//

import SwiftUI

struct ContentView: View {
   

    var body: some View{
        NavigationStack{
            Button("TestB1", role: .close){}
                .buttonStyle(.glassProminent)
        }
        
    }
}

#Preview {
    ContentView()
}
