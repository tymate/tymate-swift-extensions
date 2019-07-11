//
//  UIImageViewExtensions.swift
//  TymateSwiftExtensions
//
//  Created by Simon on 11/07/2019.
//  Copyright © 2019 Tymate. All rights reserved.
//

import Foundation
import Kingfisher

public extension UIImageView {
    func loadImage(withUrl url: String?,
                   andPlaceHolder placeHolder: UIImage? = nil, preloadWithPlaceHolder: Bool = true) {
        if preloadWithPlaceHolder {
            self.image = placeHolder ?? UIImage(named: "placeholder")
        }
        guard let urlString = url, let url = URL(string: urlString) else {
            self.image = placeHolder ?? UIImage(named: "placeholder")
            return
        }
        let resource = ImageResource(downloadURL: url, cacheKey: url.path)
        self.kf.setImage(with: resource, placeholder: placeHolder)
    }

    func designRounded(radius: Int) {
        self.layer.cornerRadius = CGFloat(radius)
        self.layer.masksToBounds = true
    }

    func designCircle() {
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = true
    }
}
