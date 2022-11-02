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
    @State var flag1 = true
    @State var flag2 = true
    @State var updateNum1 = 0
    @State var updateNum2 = 0
    @State var total = 0
    
    var body: some View {
        
        VStack {
            HStack {
                VStack{
                    TextField("", text: $numText1)
                        .frame(width: 70,height: 50)
                        .border(Color.black)
                        .padding()
                    HStack{
                        Text("+")
                        Toggle("", isOn: $flag1)
                        Text("-")
                    }
                    .fixedSize()
                }
                VStack{
                    TextField("", text: $numText2)
                        .frame(width: 70,height: 50)
                        .border(Color.black)
                        .padding()
                    HStack{
                        Text("+")
                        Toggle("", isOn: $flag2)
                        Text("-")
                    }
                    .fixedSize()
                }
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
       
        updateNum1 = flag1 ? -num1 : num1
        updateNum2 = flag2 ? -num2 : num2
        
        total = updateNum1 + updateNum2
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
