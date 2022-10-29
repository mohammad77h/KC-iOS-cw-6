//
//  ContentView.swift
//  D&7
//
//  Created by Mac on 29/10/2022.
//

import SwiftUI

struct ContentView: View {
    var StudentsDetails  = [mohammedstudent, alistudent, twopacstudent]

    var body: some View {
        VStack{
            ForEach(StudentsDetails) { detail in
                Text(detail.fullName)
                Text("\(detail.Age)")
                Text("\(detail.Year)")
                
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
