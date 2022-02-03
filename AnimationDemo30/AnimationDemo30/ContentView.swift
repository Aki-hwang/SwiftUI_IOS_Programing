//
//  ContentView.swift
//  AnimationDemo30
//
//  Created by Chuljin Hwang on 2022/02/03.
//

import SwiftUI

struct ContentView: View {
    @State private var rotate : Double = 0
    @State private var scale : CGFloat = 1
    var body: some View {
        Button(action: {
            rotate = (rotate < 360 ? rotate + 60 : 0)
            scale = (scale < 2.8 ? scale + 0.3 : 1)
        }, label: {
            Text("click to animation")
                .rotationEffect(.degrees(rotate))
                .scaleEffect(scale)
                .animation(.linear(duration:1).repeatForever(autoreverses:true))
//                .animation(.linear(duration: 1).repeatCount(10))
//                .animation(.spring(response: 1, dampingFraction: 0.2, blendDuration: 0))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
