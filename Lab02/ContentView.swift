//
//  ContentView.swift
//  Lab02
//
//  Created by Joel Ward on 8/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("CHOOSE\nYOUR PLAN")
            .font(.largeTitle)
            .fontWeight(.black)
            .multilineTextAlignment(.center)
        VStack {
            HStack{
                PricingView(c: .purple, plan: "Basic", price: 9, fontColor: .white)
                PricingView(c: .mint, plan: "Pro", price: 19, fontColor: .black)
            }
            PricingView(c: .yellow, plan: "Team", price: 199, fontColor: .black)
        }
    }
}

struct PricingView: View {
    var c: Color
    var plan: String
    var price: Int
    var fontColor: Color
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(c)
                .padding(10)
            VStack{
                Text(plan)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(fontColor)
                Text("$" + String(price))
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(fontColor)
                Text("per month")
                    .font(.headline)
                    .foregroundStyle(fontColor)
            }
        }
    }
}

#Preview {
    ContentView()
}
