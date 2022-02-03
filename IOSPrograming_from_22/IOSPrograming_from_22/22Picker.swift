//
//  22Picker.swift
//  IOSPrograming_from_22
//
//  Created by Chuljin Hwang on 2022/02/03.
//

import SwiftUI

struct _2Picker: View {
        @State private var isEditing = false
        @State private var speed : Double = 0 // 반드시 Double 설정
        @State private var inputText = ""
        @State private var colorIndex = 0
        var colors: [Color] = [.black, .red, .green, .blue]
        var colornames = ["Black", "Red", "Greed", "Blue"]
        var body: some View {
            VStack {
                Spacer()
                Text("Hello, world!")
                    .rotationEffect(.degrees(self.speed))
                    .animation(.easeInOut(duration: 5))
                    .font(.largeTitle)
                    .foregroundColor(self.colors[self.colorIndex])
                    .padding()
                Spacer()
                Divider()
                Slider(
                       value: $speed, //초기값 설정 그리고 움직이는 범위 설정
                       in: 0...360, //범위 설정
                       step:0.1,
                       onEditingChanged: { editing in
                           isEditing = editing
                       })
                Text(String(format: "%.1f",speed))
                Text(isEditing.description)
                    .padding()
                TextField("여기에 입력하세요", text: $inputText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Picker("Color", selection: $colorIndex){ //피커가 선택되면 colorIndex에
                    // 선택된 값이 들어가고 그로 인해 색상 값을 가지고 있게된다.
                    ForEach(0 ..< colornames.count){
                        Text(self.colornames[$0])
                            .foregroundColor(self.colors[$0])
                    }
                }
                .pickerStyle(.wheel)
            }
                
        }
    }

struct _2Picker_Previews: PreviewProvider {
    static var previews: some View {
        _2Picker()
    }
}
