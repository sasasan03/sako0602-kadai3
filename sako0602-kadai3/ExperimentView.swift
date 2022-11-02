//
//  ExperimentView.swift
//  sako0602-kadai3
//
//  Created by sako0602 on 2022/10/30.
//

import SwiftUI

struct ExperimentView: View {
    @State var numText1 = ""
    @State var total = 0
    @State var inPutNum1 = 0
    @State var flag = true
    
    var body: some View {
        
        VStack{
            TextField("aaa", text: $numText1)
            Toggle("" ,isOn: $flag)
            Button {
               
            } label: {
                Text("Button")
            }
                Text("\(inPutNum1)")
            Text("答えだよん\(total)")
        }
    }
    func calc() {
        let num1 = (Int(numText1)) ?? 0
        
        inPutNum1 = flag ? num1 : -num1
        
        total = inPutNum1
    }
}

struct ExperimentView_Previews: PreviewProvider {
    static var previews: some View {
        ExperimentView()
    }
}
