//
//  ContentView.swift
//  aboutAnika
//
//  Created by Anika on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showFacts = false
    
    var body: some View {
       
        ZStack {
            
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("About Anika!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
                
                Image("anika")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 330, height: 330)
                    .padding()
                
                Button(action: {
                    showFacts.toggle()
                }) {
                    Text("Fun Fact!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.yellow)
                        .padding()
                        .background(Color.pink)
                        .cornerRadius(20)
                }
                .padding()
                
                if showFacts {
                    Text("This girl is a Taco Bell addict!")
                        .font(.headline)
                        .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
