//
//  ContentView.swift
//  GestureDemo31
//
//  Created by Chuljin Hwang on 2022/02/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "hand.point.right.fill")
            .gesture(
                TapGesture()
                    .onEnded{ _ in
                        print("Tapped")
                        
                    })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
