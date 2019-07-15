//
//  UIViewController.swift
//  TymateSwiftExtensions
//
//  Created by Simon on 11/07/2019.
//  Copyright © 2019 Tymate. All rights reserved.
//

import Foundation
import UIKit
import Toast_Swift

extension UIViewController {

    func showToast(title: String, subtitle: String? = nil, image: UIImage? = nil, duration: TimeInterval = 3, position: ToastPosition = .bottom, view: UIView? = nil) {
        let optionnalShowingView = view ?? self.tabBarController?.view ?? self.view
        guard let showingView = optionnalShowingView else {return}

        if let subtitle = subtitle, subtitle.contains("offline") {
            showingView.makeToast(NSLocalizedString("Pas de connexion internet. Vérifiez votre connexion et revenez sur la page.", comment: "Error internet connection"), duration: 8, position: position, title: title, image: UIImage.init(named: "icLostConnexion"), completion: nil)
        } else {
            showingView.makeToast(subtitle, duration: duration, position: position, title: title, image: image, completion: nil)
        }
    }
}
