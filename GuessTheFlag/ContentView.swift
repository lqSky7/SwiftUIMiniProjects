//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by ca5 on 05/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAL = false
    
    var body: some View{
        Button("Show alrt"){
            showingAL = true
        }.alert("Important", isPresented: $showingAL){
            Button("OK", role: .confirm){}
            Button("REPORT", role: .destructive) {}
        }
    }
}

#Preview {
    ContentView()
}
