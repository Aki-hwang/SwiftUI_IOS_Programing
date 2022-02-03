//
//  CrossStack24.swift
//  IOSPrograming_from_22
//
//  Created by Chuljin Hwang on 2022/02/03.
//

import SwiftUI

struct CrossStack24: View {
    var body: some View {
        
        HStack(alignment: .crossAlignment, spacing: 20) {
            Circle()// 여기서 문제는 원을 오른쪽 두번째나 세번째 정렬을 할수 없다는 것이다
                // 그래서 커스텀 정렬을 사용해야해
                .foregroundColor(.purple)
                .alignmentGuide(.crossAlignment, computeValue: { d in
                    d[VerticalAlignment.center]
                })
                .frame(width: 100, height: 100)
            VStack{
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(.blue)
                    .alignmentGuide(.crossAlignment, computeValue: { d in
                        d[VerticalAlignment.center]
                    })
                    .frame(width: 100, height: 100)
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: 100, height: 100)
                
            }
        }
    }
}
//뷰의 아래쪽을 기준으로 한 정렬값을 반환
extension VerticalAlignment{
    private enum CrossAlignment : AlignmentID{
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return d[.bottom]
        }
    }
    static let crossAlignment = VerticalAlignment(CrossAlignment.self)
}
struct CrossStack24_Previews: PreviewProvider {
    static var previews: some View {
        CrossStack24()
    }
}

