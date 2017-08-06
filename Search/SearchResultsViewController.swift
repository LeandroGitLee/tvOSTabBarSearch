//
//  SearchResultsViewController.swift
//  Search
//
//  Created by Marcos Polanco on 8/1/17.
//  Copyright © 2017 Visor Labs. All rights reserved.
//

//
//  Create a file called SearchResultsViewController.swift
//

import UIKit

class SearchResultsViewController: UIViewController, UICollectionViewDelegate,  UICollectionViewDataSource, UISearchResultsUpdating, UIScrollViewDelegate{
    
    @IBOutlet var scrollView : UIScrollView!
    
    static let storyboardIdentifier = "SearchResultsViewController"
    
    fileprivate var allDataItems : [[String: AnyObject]]? //= //DataItem.sampleItems
    fileprivate var filteredDataItems : [[String: AnyObject]]?  //!= //DataItem.sampleItems
    
    override func viewDidLayoutSubviews() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("Bye Search")
    }
    
    
    func reloadSearch(_ notification: Notification){
        
        print("reloadSearch")
        
    }
    
    
    var filterString = "" {
        didSet {
            
            guard filterString != oldValue else { return }
            
            // Apply the filter or show all items if the filter string is empty.
            if filterString.isEmpty {
                
                filteredDataItems = allDataItems
                
                
            }
            else {
                
                
            }
            
            
        }
    }
    
    // MARK: UICollectionViewDataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        return UICollectionViewCell()
        
    }
    
    //Pass objects to nextView
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
    // MARK: UICollectionViewDelegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    // MARK: UISearchResultsUpdating
    func updateSearchResults(for searchController: UISearchController) {
        filterString = searchController.searchBar.text ?? ""
    }
    
    //return sizes for all JsonCell Poster size
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 390,height: 270)
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0.0, left: 90.0, bottom: 0.0, right: 90.0)
    }
    
    
}
