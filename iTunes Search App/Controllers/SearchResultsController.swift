//
//  SearchResultsController.swift
//  iTunes Search App
//
//  Created by Marcin Pietrzak on 06.10.2017.
//  Copyright © 2017 Marcin Pietrzak. All rights reserved.
//

import UIKit

class SearchResultsController: UITableViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    let dataSource = SearchResultsDataSource()
    let client = ItunesAPIClient()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(SearchResultsController.dismissSearchResultsController))
        
        tableView.tableHeaderView = searchController.searchBar
        searchController.dimsBackgroundDuringPresentation = false
        searchController.searchResultsUpdater = self
        
        tableView.dataSource = dataSource
        definesPresentationContext = true //dont show searchbar in next AlbumsViewController
    }

    @objc func dismissSearchResultsController() {
        self.dismiss(animated: true, completion: nil)
    }
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showAlbums" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let artist = dataSource.artist(at: indexPath)
                let albumListController = segue.destination as! AlbumListController
                
                client.lookupArtist(withId: artist.id, completion: { (artist, error) in
                    albumListController.artist = artist
                    albumListController.tableView.reloadData()
                })
            }
        }
    }
    
}

extension SearchResultsController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        client.searchForArtists(withTerm: searchController.searchBar.text!) { [weak self] artists, error in
            self?.dataSource.update(with: artists)
            self?.tableView.reloadData()
        }
    }
}
