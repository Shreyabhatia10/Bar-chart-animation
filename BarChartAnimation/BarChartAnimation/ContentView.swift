//
//  ContentView.swift
//  BarChartAnimation
//
//  Created by shreya.bhatia on 22/10/19.
//  Copyright © 2019 shreya.bhatia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var pickerSelectedItem = 0
    
    @State var barPoints: [[CGFloat]] = [
        [50, 30, 160, 120, 50, 98, 180],
        [100, 90, 40, 90, 150, 78, 29],
        [120, 80, 35, 65, 73, 154, 83]
    ]
    var body: some View {
        ZStack {
            Color("appBackground").edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Calory Intake")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.bottom, 24)
                
                Picker(selection: $pickerSelectedItem, label: Text("")) {
                    Text("Week 1").tag(0)
                    Text("Week 2").tag(1)
                    Text("Week 3").tag(2)
                }
                .pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 24)
            
                HStack (spacing: 16) {
                    CapsuleView(capsuleHeight: self.barPoints[self.pickerSelectedItem][0], day: "Sun")
                    CapsuleView(capsuleHeight: self.barPoints[self.pickerSelectedItem][1], day: "Mon")
                    CapsuleView(capsuleHeight: self.barPoints[self.pickerSelectedItem][2], day: "Tue")
                    CapsuleView(capsuleHeight: self.barPoints[self.pickerSelectedItem][3], day: "Wed")
                    CapsuleView(capsuleHeight: self.barPoints[self.pickerSelectedItem][4], day: "Thur")
                    CapsuleView(capsuleHeight: self.barPoints[self.pickerSelectedItem][5], day: "Fri")
                    CapsuleView(capsuleHeight: self.barPoints[self.pickerSelectedItem][6], day: "Sat")
                }.padding(.top, 24)
                    .animation(.default)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
