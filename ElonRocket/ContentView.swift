//
//  ContentView.swift
//  StarWars
//
//  Created by Michelle Chan on 7/15/20.
//  Copyright © 2020 Michelle Chan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var showElon = false
    
    var body: some View {
        ZStack {
            Image("space")
            Image("elonShip")
                .resizable()
                .scaledToFit()
                .frame(height: 600)
                .rotation3DEffect(.degrees(20), axis: (x: showElon ? 10 : 20, y: showElon ? 1 : 50, z: showElon ? 1 : 20))
                .offset(y: showElon ? -50 : 1600)
                .animation(.interpolatingSpring(mass: 0.5, stiffness: 0.4, damping: 0.5, initialVelocity: 0.5))
                .onAppear() {
                    self.showElon.toggle()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
