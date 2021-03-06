//
//  ContentView.swift
//  CocoapodsModuleDemo
//
//  Created by ZhengXianda on 2022/3/9.
//

import SwiftUI
import TKCPSpeaker
import TKCPBasket
import TKCPDog

extension View {
    public func space(_ width: CGFloat? = nil, _ color: Color = Color.blue) -> some View {
        return self.frame(width: width, height: 50, alignment: .center)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(color, lineWidth: 1)
            )
    }
}

struct ContentView: View {
    @State private var msg: String = ""
    
    var body: some View {
        VStack {
            Text(msg).space(300, Color.gray)
            Button(action: {
                msg = TKCPSpeaker.intro()
            }){
                Text("Say!").space(300)
            }
            Button(action: {
                msg = TKCPDog.intro()
            }){
                Text("Woof!").space(300)
            }
            HStack {
                Button(action: {
                    msg = LibStatic.intro()
                }){
                    Text("Lib!Static!").space(150)
                }
                Button(action: {
                    msg = FxStatic.intro()
                }){
                    Text("Fx!Static").space(150)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
