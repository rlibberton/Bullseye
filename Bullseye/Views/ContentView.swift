//
//  ContentView.swift
//  Bullseye
//
//  Created by Racheal Libberton on 2/3/22.
//


import SwiftUI

struct ContentView: View {
    
    //best practice to mark any State variable private
    @State private var alertIsVisibile = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button(action:{
                print("Hello, SwiftUI!")
                alertIsVisibile = true
            }){
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisibile,
                   content:{
                let roundedValue =
                Int(sliderValue.rounded())
                return Alert(title: Text("Hello there!"), message: Text("The slider's value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round."), dismissButton: .default(Text("Awesome!")))
            })
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
      //  ContentView()
       //     .previewLayout(.fixed(width: 568, height: 320))
    }
}
