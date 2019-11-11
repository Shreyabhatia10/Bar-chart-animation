//
//  CapsuleView.swift
//  BarChartAnimation
//
//  Created by shreya.bhatia on 22/10/19.
//  Copyright © 2019 shreya.bhatia. All rights reserved.
//

import SwiftUI

struct CapsuleView: View {
    
    var capsuleHeight: CGFloat = 0
    var capsuleWidth: CGFloat = 30
    var day: String
    
    init(capsuleHeight: CGFloat, day: String) {
        self.capsuleHeight = capsuleHeight
        self.day = day
    }
    
    var body: some View {
        VStack {
            ZStack (alignment: .bottom) {
                Capsule().frame(width: self.capsuleWidth, height: 200)
                    .foregroundColor(Color("capsuleBackground"))
                Capsule().frame(width: self.capsuleWidth, height: self.capsuleHeight)
                    .foregroundColor(Color("capsuleFill"))
            }
            Text(self.day)
                .font(.caption)
                .padding(.top, 8)
        }
    }
}

struct CapsuleView_Previews: PreviewProvider {
    static var previews: some View {
        CapsuleView(capsuleHeight: 0, day: "")
    }
}
