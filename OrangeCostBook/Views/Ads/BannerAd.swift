//
//  BannerAd.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2020/3/25.
//  Copyright © 2020 QPomelo. All rights reserved.
//

import SwiftUI
import GoogleMobileAds
import UIKit
import SnapKit

final private class BannerVC: UIViewControllerRepresentable  {

    @State var adUnitId: String = "ca-app-pub-3940256099942544/2934735716"
    
    func makeUIViewController(context: Context) -> UIViewController {
        

        let viewController = UIViewController()
        let view = GADBannerView(adSize: kGADAdSizeBanner)
        view.adUnitID = adUnitId
        view.rootViewController = viewController
        viewController.view.addSubview(view)
        // viewController.view.frame = CGRect(x: 30, y: viewController.view.frame.height., width: viewController.view.frame.width - 60, height: <#T##CGFloat#>)// CGRect(origin: .zero, size: kGADAdSizeBanner.size)
        view.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(40)
            make.width.equalTo(kGADAdSizeBanner.size.width)
            make.height.equalTo(kGADAdSizeBanner.size.height)
        }
        view.load(GADRequest())

        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}

struct Banner: View{
    var body: some View{
        HStack {
            Spacer()
            BannerVC()// .frame(width: 320, height: 50, alignment: .center)
            Spacer()
        }
    }
}
