//
//  TimerData.swift
//  IOSPrograming_from_22
//
//  Created by Chuljin Hwang on 2022/02/03.
//

import Foundation
import Combine
// 23번에서 사용 
class TimerData: ObservableObject{
    @Published var timeCount = 0
    var timer : Timer?
    init(){
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timeDidFire), userInfo: nil, repeats: true)
    }
    @objc func timeDidFire(){
        timeCount += 1
    }
    func resetCount(){
        timeCount = 0
    }
}
