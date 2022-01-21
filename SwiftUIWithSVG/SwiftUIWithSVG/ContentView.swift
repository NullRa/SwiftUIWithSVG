//
//  ContentView.swift
//  SwiftUIWithSVG
//
//  Created by Apple on 2022/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        self.svgToImg(svgNamed: "tab_home", preImgNamed: "house.fill")
            .padding()
            .background(Color.red)
            .cornerRadius(30)
    }
    
    private func svgToImg(svgNamed:String, preImgNamed:String) -> Image {
        guard let uiImg = UIImage(named: svgNamed) else {
            return Image(systemName: preImgNamed)
        }
        let width: CGFloat = 28
        let size = CGSize(width: width, height: uiImg.size.height * width / uiImg.size.width)
        let renderer = UIGraphicsImageRenderer(size: size)
        let newImg = renderer.image { (context) in
            uiImg.draw(in: renderer.format.bounds)
        }
        return Image(uiImage: newImg)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
