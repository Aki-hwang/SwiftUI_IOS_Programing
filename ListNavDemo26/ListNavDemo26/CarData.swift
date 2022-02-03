//
//  CarData.swift
//  ListNavDemo26
//
//  Created by Chuljin Hwang on 2022/02/03.
//

import UIKit
import SwiftUI

var carData: [Car] = loadJson("carData.json")
//loadJson은 Json 파일을 로드하는 표준 방식이다
func loadJson<T:Decodable>(_ filename: String) -> T{
    let data : Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("\(filename) not found")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load \(filename): \(error)")
    }
    do{
        return try JSONDecoder().decode(T.self, from: data)
    }catch {
        fatalError("Unable to parse \(filename): \(error)")
    }
}
