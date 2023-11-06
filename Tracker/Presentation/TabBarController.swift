//
//  ViewController.swift
//  Tracker
//
//  Created by Dassam on 01.11.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    private func setupTabBar() {
        let trackersViewController = TrackersListViewController()
        let statisticsViewController = StatisticsViewController()
        let navigationViewController = NavigationViewController(rootViewController: trackersViewController)
        
        trackersViewController.tabBarItem = UITabBarItem(
            title: "Трекеры",
            image: UIImage(imageLiteralResourceName: "trackersItem"),
            selectedImage: nil
        )
        
        statisticsViewController.tabBarItem = UITabBarItem(
            title: "Статистика",
            image: UIImage(imageLiteralResourceName: "statsItem"),
            selectedImage: nil
        )
        
        tabBar.tintColor = .blueYP
        tabBar.unselectedItemTintColor = .grayYP
        
        self.viewControllers = [navigationViewController, statisticsViewController]
    }
    
}

