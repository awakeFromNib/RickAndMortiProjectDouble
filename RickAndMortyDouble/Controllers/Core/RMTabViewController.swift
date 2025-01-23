//
//  RMTabViewController.swift
//  RickAndMortyDouble
//
//  Created by Alex Murphy on 14.01.2025.
//

import UIKit

/// Controller to house tabs and root tab controllers
final class RMTabViewController: UITabBarController {

	override func viewDidLoad() {
		super.viewDidLoad()
//		view.backgroundColor = .systemIndigo
		setUpTabs()
	}

	private func setUpTabs() {
		let charactersVC = RMCharacterViewController()
		let locationsVC = RMLocationViewController()
		let episodesVC = RMEpisodeViewController()
		let settingsVC = RMSettingsViewController()

		charactersVC.navigationItem.largeTitleDisplayMode = .automatic
		locationsVC.navigationItem.largeTitleDisplayMode = .automatic
		episodesVC.navigationItem.largeTitleDisplayMode = .automatic
		settingsVC.navigationItem.largeTitleDisplayMode = .automatic

		// titles
//		charactersVC.title = "Characters"
//		locationsVC.title = "Locations"
//		episodesVC.title = "Episodes"
//		settingsVC.title = "Settings"

		let nav1 = UINavigationController(rootViewController: charactersVC)
		let nav2 = UINavigationController(rootViewController: locationsVC)
		let nav3 = UINavigationController(rootViewController: episodesVC)
		let nav4 = UINavigationController(rootViewController: settingsVC)

		nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
		nav1.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
		nav1.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
		nav1.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)

		for nav in [nav1, nav2, nav3, nav4] {
			nav.navigationBar.prefersLargeTitles = true
		}

		// attaching on tabbar
		setViewControllers([nav1, nav2, nav3, nav4], animated: true)

	}
}

