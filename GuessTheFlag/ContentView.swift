//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by ca5 on 05/12/25.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View{
        ZStack{
            Color.teal.frame(maxWidth: 200, minHeight: 200).ignoresSafeArea()
            Color.pink.frame(maxWidth: 50, minHeight: 90).ignoresSafeArea()
            Text("HIII").foregroundStyle(.secondary)
                .font(.largeTitle)
                .padding(50)
                .background(.thinMaterial, in: .rect(cornerRadius: 20))
                
                
            
                
            
            
        }
    }
}

#Preview {
    ContentView()
}
