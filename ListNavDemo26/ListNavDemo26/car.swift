//
//  car.swift
//  ListNavDemo26
//
//  Created by Chuljin Hwang on 2022/02/03.
//

import Foundation

struct Car : Codable, Identifiable{
    var id: String
    var name: String
    var description: String
    var isHybrid: Bool
    var imageName: String
}//identi 프로토콜을 따르도록 선언되어 있어서 각 인스턴스는 List 뷰에서 선언될 수 있다.
