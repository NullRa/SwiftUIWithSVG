//
//  ContentView.swift
//  SwiftUIWithSVG
//
//  Created by Apple on 2022/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(uiImage: UIImage(named: "tab_home")!)
            .padding()
            .background(Color.red)
            .cornerRadius(30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
