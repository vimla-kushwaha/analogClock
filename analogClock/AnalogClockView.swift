//
//  AnalogClockView.swift
//  analogClock
//
//  Created by vimla kushwaha on 14/05/24.
//

import SwiftUI

struct AnalogClockView: View {
    typealias AnalogClockCallBack = (Data)->Void
    
    @Binding var foregroundColor: Color
    @State private var currentTime : Date = Date.now
    
    var onUpdateTime: AnalogClockCallBack? = nil
    let borderWidth: CGFloat = 20
    
    private let timer = Timer.publish(every: 1, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        GeometryReader{geometry in
            let radius = geometry.size.width/2
            let innerRadius = radius - borderWidth
            
            let centerX = geometry.size.width/2
            let centerY = geometry.size.height/2
            
            let center = CGPoint(x:centerX, y:centerY)
            
            let components = Calendar.current.dateComponents([.hour,.minute,.second], from: currentTime)
            
            let hour = Double(components.hour ?? 0)
            let minutes = Double(components.minute ?? 0)
            let second = Double(components.second ?? 0)
            
            Circle()
                .foregroundColor(foregroundColor)
            
            Circle()
                .foregroundColor(.white)
                .padding(borderWidth)
            
            
        }
    }
}

struct AnalogClockView_Previews: PreviewProvider{
    static var previews: some View{
        AnalogClockView(foregroundColor: .constant(.red))
    }
}
