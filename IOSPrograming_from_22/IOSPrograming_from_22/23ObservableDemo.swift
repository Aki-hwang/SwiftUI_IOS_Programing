//
//  23ObservableDemo.swift
//  IOSPrograming_from_22
//
//  Created by Chuljin Hwang on 2022/02/03.
//

import SwiftUI

struct ObservableDemo: View {
    @EnvironmentObject var timerData : TimerData
    var body: some View {
        NavigationView{
            VStack{
                Text("Time Count : \(timerData.timeCount)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Button(action: {
                    timerData.resetCount()
                }, label: {
                    Text("Reset Count")
                })
                NavigationLink(destination: SecondView(timerData: _timerData)) {
                    Text("Next Screen")
            }
            
            }
        }
    }
}

struct ObservableDemo_Previews: PreviewProvider {
    static var previews: some View {
        ObservableDemo().environmentObject(TimerData())
    }
}
