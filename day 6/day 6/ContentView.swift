//
//  ContentView.swift
//  day 6
//
//  Created by Mac on 26/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var weight = ""
    @State var height = ""
    
    @State var BMI = ""
    @State var Status = ""
    
    var body: some View {
        VStack {
            
            Image("weight")
                .resizable()
                .scaledToFit()
                .frame(width: 130, height: 135)
                .padding()
            
            Text("ادخل الطول و الوزن")
                .font(.callout)
                .fontWeight(.semibold)
            
            
            
            TextField("enter your weight in KG", text: $weight)
            
            TextField("enter your height in meters", text: $height)
            
            Button(action: {BMICalulator(heigh: Double(height) ?? 1.0, weight: Double(weight) ?? 1.0)}, label: {
                Text("احسب")
                    .font(.title)
                    .foregroundColor(.blue)
                
            })
            Text("BMI = \(BMI)")
            Text("Status = \(Status)")

        }
        
        .frame(width: 500, height: 280)
        .background(Color.orange)
        .contrast(10)
        
    }
    func BMICalulator(heigh: Double, weight: Double){
        var mohammed = weight / (heigh * heigh)
        if mohammed>=20 {
            Status = "ضعيف"
        }else if mohammed <= 25 {
            Status = "جيد"
        } else {
            Status = "سمين"
        }
        BMI = "\(mohammed)"
        
        
    }
}
            
            
            struct ContentView_Previews: PreviewProvider {
                static var previews: some View {
                    ContentView()
                }
            }
        
        
        
        
        
        
    

