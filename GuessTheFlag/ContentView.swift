//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by ca5 on 05/12/25.
//

import SwiftUI

struct ContentView: View {
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria",
                     "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State var correctAns = Int.random(in: 0...2)
    @State var showResult = false
    @State var result = ""
    
    var body: some View{
        ZStack{
            RadialGradient(colors: [.pink,.black], center: .center, startRadius: 0, endRadius: 340).ignoresSafeArea()
            VStack(spacing: 30){
                HStack{
                    Text("Tap the flag of").italic().foregroundColor(.white)
                    Text(countries[correctAns]).bold().foregroundColor(.white)
                }
                ForEach(0..<3){
                    number in
                    Button{
                        flagTapped(curr: number)
                        
                    }
                    label: {Image(countries[number])
                    }
                    
                }
                
            }
            
        }.alert(result , isPresented: $showResult){
            Button("Continue", action: shuff)
            // FIX: SHOW SCORE USER
        }
    }
    func flagTapped(curr: Int){
        if(curr == correctAns){
            showResult = true
            result = "Correct!"
        } else {
            showResult = true
            result = "False!"
        }
    }
    
    func shuff(){
        countries.shuffle()
        correctAns = Int.random(in: 0...2)
    }
}

#Preview {
    ContentView()
}

