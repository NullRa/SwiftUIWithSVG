//
//  ContentView.swift
//  SwiftUIWithSVG
//
//  Created by Apple on 2022/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        self.svgToImg(svgNamed: "tab_home2", preImgNamed: "house.fill")
            .padding()
            .background(Color.red)
            .cornerRadius(30)
    }
    
    private func svgToImg(svgNamed:String, preImgNamed:String) -> Image {
        guard let uiImg = UIImage(named: svgNamed) else {
            return Image(systemName: preImgNamed)
        }
        return Image(uiImage: uiImg)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
