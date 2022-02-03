//
//  SecondView.swift
//  IOSPrograming_from_22
//
//  Created by Chuljin Hwang on 2022/02/03.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var timerData : TimerData //앞에서 넘겨온 timerdata를 가져와야 연결해서 볼수 있어
    var body: some View {
        VStack{
            Text("Second View")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Text("Time Count : \(timerData.timeCount)")
                .font(.headline)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView().environmentObject(TimerData())
    }
}
