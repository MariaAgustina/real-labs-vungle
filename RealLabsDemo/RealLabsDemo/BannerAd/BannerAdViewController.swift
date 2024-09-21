//
//  BannerAdViewController.swift
//  RealLabsDemo
//
//  Created by Maria Agustina Markosich on 20/09/2024.
//

import UIKit
import VungleAdsSDK

class BannerAdViewController: UIViewController {

    @IBOutlet weak var bannerAdView: UIView!
    private var bannerAd: VungleBanner?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.bannerAd = VungleBanner(placementId: "BANNER_DEMO-7816508", size: BannerSize.regular)
        self.bannerAd?.delegate = self
        self.bannerAd?.load()
        self.bannerAd?.present(on: bannerAdView)
    }


}

extension BannerAdViewController: VungleBannerDelegate {
    // Ad load Events
    func bannerAdDidLoad(_ banner: VungleBanner) {
        print("bannerAdDidLoad")
    }

    func bannerAdDidFailToLoad(_ banner: VungleBanner, withError: NSError) {
        print("bannerAdDidFailToLoad")
    }

    // Ad Lifecycle Events
    func bannerAdWillPresent(_ banner: VungleBanner) {
        print("bannerAdWillPresent")
    }

    func bannerAdDidPresent(_ banner: VungleBanner) {
        print("bannerAdDidPresent")
    }

    func bannerAdDidFailToPresent(_ banner: VungleBanner, withError: NSError) {
        print("bannerAdDidFailToPresent")
    }

    func bannerAdDidTrackImpression(_ banner: VungleBanner) {
        print("bannerAdDidTrackImpression")
    }

    func bannerAdDidClick(_ banner: VungleBanner) {
        print("bannerAdDidClick")
    }

    func bannerAdWillLeaveApplication(_ banner: VungleBanner) {
        print("bannerAdWillLeaveApplication")
    }

    func bannerAdWillClose(_ banner: VungleBanner) {
        print("bannerAdWillClose")
    }

    func bannerAdDidClose(_ banner: VungleBanner) {
        print("bannerAdDidClose")
    }
}
