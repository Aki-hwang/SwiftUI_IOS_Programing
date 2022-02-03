//
//  ContentView.swift
//  AnimationDemo30
//
//  Created by Chuljin Hwang on 2022/02/03.
//

import SwiftUI

struct ContentView: View {
    @State private var isButtonVisible = true

    var body: some View {

        VStack{
            Toggle(isOn: $isButtonVisible.animation(.linear(duration: 2))){
                Text("Show/Hide Button")
            }
            .padding()
            if isButtonVisible{
                Button(action: {
                    
                }, label: {
                    Text("Example Button")
                }).font(.largeTitle)
//                    .transition(.slide)//컴바인해서 효과를 멋지게 만들수 있어
                    .transition(AnyTransition.opacity.combined(with: .move(edge: .top)))
//                    .transition(.asymmetric(insertion: .scale, removal: .slide)) //비대칭적 전환 가능
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
