//
//  ContentView.swift
//  analogClock
//
//  Created by vimla kushwaha on 14/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var theameColor : Color = .red
    @State private var currentTime : Date = Date.now
    @State private var changeRandomColor : Bool = false
    private var colors: [Color]
    
    init(){
        colors = [.red,.yellow,.blue,.black,.purple,.mint,.orange]
    }
    
    var body: some View {
        VStack {
            AnalogClockView(foregroundColor: $theameColor){date in
                currentTime = date
                if changeRandomColor{
                    withAnimation(){
                        theameColor = colors.randomElement() ?? theameColor
                    }
                }
            }
            .shadow(color: .black.opacity(0.15),radius: 32)
            .padding(60)
            Text(currentTime,style: .time)
                .font(.system(size: 52))
            Toggle(isOn: $changeRandomColor){
                Text("Change Color")
            }
            .padding(.horizontal,30)
            Spacer(minLength: 30)
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(theameColor.opacity(0.15))
    }
}

#Preview {
    ContentView()
}
