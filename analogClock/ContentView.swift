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
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
