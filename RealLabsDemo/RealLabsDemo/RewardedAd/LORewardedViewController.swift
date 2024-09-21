//
//  LORewardedViewController.swift
//  RealLabsDemo
//
//  Created by Maria Agustina Markosich on 20/09/2024.
//

import UIKit
import VungleAdsSDK

class LORewardedViewController: UIViewController {

    private var rewardedAd: VungleRewarded?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.rewardedAd = VungleRewarded(placementId: "REWARDED_DEMO-9836712")
        self.rewardedAd?.delegate = self
        self.rewardedAd?.load()
        self.rewardedAd?.present(with: self)
    }

}

extension LORewardedViewController: VungleRewardedDelegate {
    // Ad load events
    func rewardedAdDidLoad(_ rewarded: VungleRewarded) {
        print("rewardedAdDidLoad")
    }

    func rewardedAdDidFailToLoad(_ rewarded: VungleRewarded, withError: NSError) {
        print("rewardedAdDidFailToLoad")
    }

    // Ad Lifecycle Events
    func rewardedAdWillPresent(_ rewarded: VungleRewarded) {
        print("rewardedAdWillPresent")
    }

    func rewardedAdDidPresent(_ rewarded: VungleRewarded) {
        print("rewardedAdDidPresent")
    }

    func rewardedAdDidFailToPresent(_ rewarded: VungleRewarded, withError: NSError) {
        print("rewardedAdDidFailToPresent")
    }

    func rewardedAdDidTrackImpression(_ rewarded: VungleRewarded) {
        print("rewardedAdDidTrackImpression")
    }

    func rewardedAdDidClick(_ rewarded: VungleRewarded) {
        print("rewardedAdDidClick")
    }

    func rewardedAdWillLeaveApplication(_ rewarded: VungleRewarded) {
        print("rewardedAdWillLeaveApplication")
    }

    func rewardedAdDidRewardUser(_ rewarded: VungleRewarded) {
        print("rewardedAdDidRewardUser")
    }

    func rewardedAdWillClose(_ rewarded: VungleRewarded) {
        print("rewardedAdWillClose")
    }

    func rewardedAdDidClose(_ rewarded: VungleRewarded) {
        print("rewardedAdDidClose")
    }
}
