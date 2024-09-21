//
//  InterstitialAdViewController.swift
//  RealLabsDemo
//
//  Created by Maria Agustina Markosich on 20/09/2024.
//

import UIKit
import VungleAdsSDK

final class InterstitialAdViewController: UIViewController {

    private var interstitialAd: VungleInterstitial?
    static var placementId: String = "TEST1-9242601"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.interstitialAd = VungleInterstitial(placementId: InterstitialAdViewController.placementId)
        self.interstitialAd?.delegate = self
        self.interstitialAd?.load()
    }

}

extension InterstitialAdViewController: VungleInterstitialDelegate {
    // Ad load events
    func interstitialAdDidLoad(_ interstitial: VungleInterstitial) {
        print("interstitialAdDidLoad")
        self.interstitialAd?.present(with: self)
    }

    func interstitialAdDidFailToLoad(_ interstitial: VungleInterstitial, withError: NSError) {
        print("interstitialAdDidFailToLoad")
    }

    // Ad Lifecycle Events
    func interstitialAdWillPresent(_ interstitial: VungleInterstitial) {
        print("interstitialAdWillPresent")
    }

    func interstitialAdDidPresent(_ interstitial: VungleInterstitial) {
        print("interstitialAdDidPresent")
    }

    func interstitialAdDidFailToPresent(_ interstitial: VungleInterstitial, withError: NSError) {
        print("interstitialAdDidFailToPresent")
    }

    func interstitialAdDidTrackImpression(_ interstitial: VungleInterstitial) {
        print("interstitialAdDidTrackImpression")
    }

    func interstitialAdDidClick(_ interstitial: VungleInterstitial) {
        print("interstitialAdDidClick")
    }

    func interstitialAdWillLeaveApplication(_ interstitial: VungleInterstitial) {
        print("interstitialAdWillLeaveApplication")
    }

    func interstitialAdWillClose(_ interstitial: VungleInterstitial) {
        print("interstitialAdWillClose")
    }

    func interstitialAdDidClose(_ interstitial: VungleInterstitial) {
        print("interstitialAdDidClose")
    }
}
