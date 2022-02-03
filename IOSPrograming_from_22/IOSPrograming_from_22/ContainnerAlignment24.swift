//
//  ContainnerAlignment24.swift
//  IOSPrograming_from_22
//
//  Created by Chuljin Hwang on 2022/02/03.
//

import SwiftUI

struct ContainnerAlignment24: View {
    var body: some View {
        HStack(alignment: .oneThird){
            Rectangle()
                .foregroundColor(.green)
                .frame(width: 50, height: 200)
            Rectangle()
                .foregroundColor(.red)
                .alignmentGuide(.oneThird, computeValue:  { d in
                    d[VerticalAlignment.top]
                })
                .frame(width: 50, height: 200)
                
            Rectangle()
                .foregroundColor(.blue)
                .frame(width: 50, height: 200)
            Rectangle()
                .foregroundColor(.orange)
                .alignmentGuide(.oneThird, computeValue:  { d in
                    d[VerticalAlignment.bottom]
                })
                .frame(width: 50, height: 200)
        }
    }
}

extension VerticalAlignment{
    private enum OneThird : AlignmentID{
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return d.height / 3
        }
    }
    static let oneThird = VerticalAlignment(OneThird.self)
}

struct ContainnerAlignment24_Previews: PreviewProvider {
    static var previews: some View {
        ContainnerAlignment24()
    }
}
