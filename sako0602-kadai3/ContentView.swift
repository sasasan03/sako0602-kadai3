//
//  ContentView.swift
//  sako0602-kadai3
//
//  Created by sako0602 on 2022/10/30.
//

import SwiftUI

struct ContentView: View {
    
    @State var numText1 = ""
    @State var numText2 = ""
    @State var isMinus1 = true
    @State var isMinus2 = true
    @State var updateNum1 = 0
    @State var updateNum2 = 0
    @State var total = 0
    
    var body: some View {
        
        VStack {
            HStack {
                NumberInputView(numText: $numText1, isMinus: $isMinus1)
                NumberInputView(numText: $numText2, isMinus: $isMinus2)
            }
            .padding()

            Button {
                calculation()
            } label: {
                Text("Button")
            }
            .padding()

            HStack{
                Spacer()
                Text("\(updateNum1)")
                Spacer()
                Text("\(updateNum2)")
                Spacer()
            }
            .padding()

            Text("\(total)")
        }
    }

    func calculation() {
        let num1 = (Int(numText1)) ?? 0
        let num2 = (Int(numText2)) ?? 0
       
        updateNum1 = isMinus1 ? -num1 : num1
        updateNum2 = isMinus2 ? -num2 : num2
        
        total = updateNum1 + updateNum2
    }
}

struct NumberInputView: View {
    @Binding var numText: String
    @Binding var isMinus: Bool

    var body: some View {
        VStack{
            TextField("", text: $numText)
                .frame(width: 70,height: 50)
                .border(Color.black)
                .padding()
            HStack{
                Text("+")
                Toggle("", isOn: $isMinus)
                Text("-")
            }
            .fixedSize()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
