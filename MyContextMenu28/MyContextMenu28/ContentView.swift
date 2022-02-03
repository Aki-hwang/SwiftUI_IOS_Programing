//
//  ContentView.swift
//  MyContextMenu28
//
//  Created by Chuljin Hwang on 2022/02/03.
//

import SwiftUI

struct ContentView: View {
    @State private var foregroundColor: Color = Color.black
    @State private var backgroundColor: Color = Color.white
    var body: some View {
        Text("Hello, world!")
            .font(.largeTitle)
            .padding()
            .foregroundColor(foregroundColor)
            .background(backgroundColor)
            .contextMenu{
                Button(action: {
                    self.foregroundColor = .black
                    self.backgroundColor = .white
                }, label: {
                    Text("Normal Colors")
                    Image(systemName: "paintbrush")
                })
                Button(action: {
                    self.foregroundColor = .white
                    self.backgroundColor = .black
                }, label: {
                    Text("Inverted Colors")
                    Image(systemName: "paintbrush.fill")
                })
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
