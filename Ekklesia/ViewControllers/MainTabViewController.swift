//
//  MainTabViewController.swift
//  Ekklesia
//
//  Created by 이상준 on 2023/03/08.
//

import UIKit

class MainTabViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
    }
    
    
    func configureViewController() {
        
        let layout = UICollectionViewFlowLayout()
        
        let homeVC = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "home_unselected"), selectedImage: #imageLiteral(resourceName: "home_selected"), rootViewController: HomeViewController(collectionViewLayout: layout))
        let bibleVC = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "book"), selectedImage: #imageLiteral(resourceName: "book.fill"), rootViewController: BibleViewController())
        let imageSelectorVC = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "plus_unselected"), selectedImage: #imageLiteral(resourceName: "plus_unselected"), rootViewController: ImageSelectorViewController())
        let profileVC = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "profile_unselected"), selectedImage: #imageLiteral(resourceName: "profile_selected"), rootViewController: ProfileViewController())
        
        viewControllers = [homeVC, bibleVC, imageSelectorVC, profileVC]
        tabBar.tintColor = .black
    }
    
    func templateNavigationController(unselectedImage: UIImage, selectedImage: UIImage, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .black
        return nav
    }
    
}
