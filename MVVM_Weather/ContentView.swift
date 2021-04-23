//
//  ContentView.swift
//  MVVM_Weather
//
//  Created by valentine on 03.04.2021.
//

import SwiftUI

struct ContentView: View {
   @StateObject var viewModel = WheatherViewModel()
    
    
    var body: some View {
        NavigationView {
            VStack {
                Text(viewModel.timezone)
                    .font(.system(size: 32))
                Text(viewModel.temp)
                    .font(.system(size: 44))
                Text(viewModel.title)
                    .font(.system(size: 24))
                Text(viewModel.descriptionText)
                    .font(.system(size: 24))
            }
            .navigationTitle("Weather with MVVM")
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
