//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by ca5 on 05/12/25.
//

import SwiftUI

enum AppData{
    static var points: [SIMD2<Float>] = [
        [0, 0], [0.5, 0], [1.0, 0],
        [0, 0.5], [0.5, 0.5], [1.0, 0.5],
        [0, 1.0],[0.5, 1.0],[1.0, 1.0],
    ]
    
    static var Colorr : [Color] = [
        .black, .pink, .red, .yellow
    ]
    
    static func RandomColors() -> [Color] {
        (0...8).map {_ in Colorr.randomElement()!}
    }
}

struct ContentView: View {
   
    @State private var col = AppData.RandomColors();
    var body: some View{
        NavigationStack{
            MeshGradient(width: 3, height: 3, points: AppData.points, colors: col)
            .navigationTitle("Mesh.")
            .navigationBarTitleDisplayMode(.automatic)
            .ignoresSafeArea(edges: .bottom)
        }
        
    }
}

#Preview {
    ContentView()
}
