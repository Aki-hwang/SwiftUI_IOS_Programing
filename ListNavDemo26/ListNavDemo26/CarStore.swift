//
//  CarStore.swift
//  ListNavDemo26
//
//  Created by Chuljin Hwang on 2022/02/03.
//

import SwiftUI
import Combine

class CarStore : ObservableObject{
    @Published var cars: [Car]
    init(cars:[Car]=[]){
        self.cars = cars
    }
    
}
