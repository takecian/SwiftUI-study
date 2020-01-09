//
//  ContentView.swift
//  SwiftUI-study
//
//  Created by Fujiki Takeshi on 2019/12/02.
//  Copyright © 2019 Fujiki Takeshi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double
    
    var body: some View {
        VStack {
            HStack {
                // Target color block
                VStack {
                    Rectangle()
                        .foregroundColor(Color(red: rTarget, green: gTarget, blue: bTarget, opacity: 1.0))
                    Text("Match this color")
                }
                // Guess color block
                VStack {
                    Rectangle().foregroundColor(Color(red: rGuess, green: gGuess, blue: bGuess, opacity: 1.0))
                    HStack {
                        Text("R: xxx")
                            .fontWeight(.light)
                            .foregroundColor(Color.orange)
                        Text("G: xxx")
                            .font(.headline)
                        Spacer(minLength: 0)
                        Text("B: xxx")
                            .font(.title)
                            .foregroundColor(.blue)
                    }
                }
            }
            
            Text("Hit me button")
            
            VStack {
                HStack {
                  Text("0")
                    .foregroundColor(.red)
                  Slider(value: $rGuess)
                  Text("255")
                    .foregroundColor(.red)
                }
                HStack {
                  Text("0")
                    .foregroundColor(.red)
                  Slider(value: $gGuess)
                  Text("255")
                    .foregroundColor(.red)
                }
                HStack {
                  Text("0")
                    .foregroundColor(.red)
                  Slider(value: $bGuess)
                  Text("255")
                    .foregroundColor(.red)
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5)
        }
    }
}
