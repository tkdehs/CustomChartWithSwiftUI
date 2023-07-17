//
//  URLImage.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/17.
//

import SwiftUI
import Combine

struct URLImage: View {
    @State var image: UIImage? = nil
    private var url: String

    init(url: String) {
        self.url = url
    }

    var body: some View {
        Group {
            if let img = self.image {
                Image(uiImage: img)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            } else {
                Text("Loading...")
            }
        }.onAppear(perform: loadImage)
    }

    func loadImage() {
        guard let url = URL(string: self.url) else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let d = data {
                DispatchQueue.main.async {
                    self.image = UIImage(data: d)
                }
            }
        }.resume()
    }
}

struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(url: "https://cdn.aitimes.kr/news/photo/202303/27617_41603_044.jpg")
    }
}
