//
//  ContentView.swift
//  DrawingDemo29
//
//  Created by Chuljin Hwang on 2022/02/03.
//

import SwiftUI

struct ContentView: View {
    let colors = Gradient(colors: [Color.red, Color.yellow, Color.green, Color.blue, Color.purple])
    var body: some View {
        VStack {
            Circle()
                .fill(RadialGradient(gradient: colors, center: .center, startRadius: CGFloat(0), endRadius: CGFloat(200)))
            Circle()
                .fill(AngularGradient(gradient: colors, center: .center))
            Rectangle()
                .fill(LinearGradient(gradient: colors, startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 200, height: 200)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
