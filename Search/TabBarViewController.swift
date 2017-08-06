//
//  TabBarViewController.swift
//  Search
//
//  Created by Marcos Polanco on 8/1/17.
//  Copyright © 2017 Visor Labs. All rights reserved.
//


//
//  Create a file called TabBarViewController.swift
//

import UIKit

class TabBarViewController: UITabBarController, UINavigationControllerDelegate {
    
    var window: UIWindow?
    
    func searchContainerDisplay(){
        
        let resultsController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SearchResultsViewController") as! SearchResultsViewController
        let searchController = UISearchController(searchResultsController: resultsController)
        
        searchController.searchResultsUpdater = resultsController
        
        searchController.obscuresBackgroundDuringPresentation = true
        searchController.hidesNavigationBarDuringPresentation = false
        
        let searchPlaceholderText = NSLocalizedString("Search Title", comment: "")
        searchController.searchBar.placeholder = searchPlaceholderText
        searchController.searchBar.tintColor = UIColor.black
        searchController.searchBar.barTintColor = UIColor.black
        searchController.searchBar.searchBarStyle = .minimal
        searchController.searchBar.keyboardAppearance = UIKeyboardAppearance.dark
        
        let searchContainerViewController = UISearchContainerViewController(searchController: searchController)
        let navController = UINavigationController(rootViewController: searchContainerViewController)
        navController.view.backgroundColor = UIColor.black
        
        self.viewControllers = [navController]
//        if var tbViewController = self.viewControllers{
//            
//            //tbViewController.append(navController)
//            //Inserts Search into the 3rd array position
//            tbViewController.append(navController)
//            self.viewControllers = tbViewController
//        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.searchContainerDisplay()
        
        // Sets the default color of the icon of the selected UITabBarItem and Title
        UIBarButtonItem.appearance().tintColor = UIColor.black
        UITabBar.appearance().tintColor = UIColor.black
        // Sets the default color of the background of the UITabBar
        UITabBar.appearance().barTintColor = UIColor.black
        
        UITabBar.appearance().isTranslucent = false
        
        if let tbItems = self.tabBar.items{
            
            let tabBarItem1: UITabBarItem = tbItems[0]
//            let tabBarItem2: UITabBarItem = tbItems[1]
//            let tabBarItem3: UITabBarItem = tbItems[2]
//            let tabBarItem4: UITabBarItem = tbItems[3]
//            tabBarItem1.title = "Home"
//            tabBarItem2.title = "Programs"
//            tabBarItem3.title = "Favorites"
            tabBarItem1.title = "Search"
            
        }
        
        if let tabBarItems = self.tabBar.items{
            
            for item in tabBarItems as [UITabBarItem]
            {
                
                //Preserves white Color on selected
                self.tabBar.tintColor = UIColor.white
                
                item.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.white], for:UIControlState())
                item.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.gray], for:UIControlState.disabled)
                item.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.gray], for:UIControlState.selected)
            }
            
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
