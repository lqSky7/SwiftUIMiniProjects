//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by ca5 on 05/12/25.
//

import SwiftUI

struct FlagImage: ViewModifier{
    var img: Image
    
    func body(content: Content) -> some View {
        VStack{
            img
            .clipShape(RoundedRectangle(cornerRadius: 7))
        }
    }
    
}

extension View {
    func flaggedImage(with name: String) -> some View{
        modifier(FlagImage(img: Image(name)))
    }
}

struct ContentView: View {
    
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria",
                     "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State var correctAns = Int.random(in: 0...2)
    @State var showResult = false
    @State var result = ""
    @State var nu = 0
    var body: some View{
        ZStack{
            RadialGradient(colors: [.pink,.black], center: .center, startRadius: 0, endRadius: 340).ignoresSafeArea()
            VStack(spacing: 30){
                VStack(spacing: 10){
                    Text("Tap the flag of").italic().foregroundColor(.white)
                    Text(countries[correctAns]).bold().foregroundColor(.white).font(.largeTitle).fontDesign(.serif)
                }.frame(minWidth: 250, minHeight: 100)
                    .glassEffect(.clear.interactive())
                ForEach(0..<3){
                    number in
                    Button{
                        flagTapped(curr: number)
                    
                    }
                    label: {flaggedImage(with: countries[number])
                    }
                    
                }
                Text("Score : \(nu)")
                    .padding().colorInvert()
//                    .background(.ultraThinMaterial)
                    .glassEffect(.clear.interactive())
                    .fontWidth(.expanded)
            }
          
        }.alert(result, isPresented: $showResult) {
            Button("Continue", action: shuff)
        }
    }
    func flagTapped(curr: Int){
        if(youWin()){
            showResult = true
            result = "You Won!!"
            nu = 3
        }
        else if(curr == correctAns){
            showResult = true
            result = "Correct!"
            nu+=1
        } else {
            showResult = true
            result = "False!"
        }
        
    
    }
    
    func youWin() -> Bool{
        if(nu >= 2){
            return true
        }; return false
    }
    
    func shuff(){
        countries.shuffle()
        correctAns = Int.random(in: 0...2)
    }
}

#Preview {
    ContentView()
}

