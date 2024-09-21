//
//  ViewController.swift
//  RealLabsDemo
//
//  Created by Maria Agustina Markosich on 19/09/2024.
//

import UIKit
import VungleAdsSDK
import AppTrackingTransparency

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0, execute: {
            if #available(iOS 14, *) {
                ATTrackingManager.requestTrackingAuthorization { status in
                    //VungleAds.initWithAppId("5e13cc9d61880b27a65bf735") { error in //Example App id
                    VungleAds.initWithAppId("66edced9548cf7c84914ce8d") { error in
                        if let error = error {
                            print("Error initializing SDK")
                        } else {
                            print("Init is complete")
                        }
                    }
                }
            }
        })

    }

    @IBAction func interstitialAdPressed(_ sender: Any) {
        let vc = InterstitialAdViewController(nibName: "InterstitialAdViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)

    }
    
    @IBAction func rewardedAdPressed(_ sender: Any) {
        let vc = LORewardedViewController(nibName: "LORewardedViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)

    }

    @IBAction func bannerAdPressed(_ sender: Any) {
        let vc = BannerAdViewController(nibName: "BannerAdViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)

    }

    @IBAction func nativeAdPressed(_ sender: Any) {

    }

    @IBAction func appOpenAdPressed(_ sender: Any) {
    }
}

