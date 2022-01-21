# SwiftUIWithSVG
User sag file with swift
---

### 直接暴力使用SVG檔案

Image(uiImage: UIImage(named: "tab_home")!)

### 加入一個備用檔案避免optional crash

包裝成一個svgToImg function

```swift
private func svgToImg(svgNamed:String, preImgNamed:String) -> Image {
        guard let uiImg = UIImage(named: svgNamed) else {
            return Image(systemName: preImgNamed)
        }
        return Image(uiImage: uiImg)
    }
```

使用svgToImg function

```swift
self.svgToImg(svgNamed: "tab_home2", preImgNamed: "house.fill")
            .padding()
            .background(Color.red)
            .cornerRadius(30)
```

### 更進階的用法

調整svg檔案的圖片大小

```swift
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
```

### 未解決的問題

無法直接調整svg檔案顏色,查過有個套件svgKit可以使用,有這方面需求可以往這方向去找答案.
