//
//  AvailableServicesViewController.swift
//  Homify1
//
//  Created by aksh kalyani on 23/03/23.
//

import UIKit

class AvailableServicesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!

    var services = ["Service 1", "Service 2", "Service 3", "Service 4", "Service 5", "Service 6", "Service 7", "Service 8", "Service 9", "Service 10"]
    var filteredServices: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup table view
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView() // Hides empty cells
        tableView.keyboardDismissMode = .onDrag // Dismisses keyboard on scroll
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

        // Setup search bar
        searchBar.delegate = self
        searchBar.autocapitalizationType = .none
        searchBar.placeholder = "Search services..."
        searchBar.searchBarStyle = .minimal

        // Initialize filtered services
        filteredServices = services
    }

    // MARK: - Table View Delegate and Data Source

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredServices.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = filteredServices[indexPath.row]
        return cell
    }

    // MARK: - Search Bar Delegate

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredServices = services.filter({ (service: String) -> Bool in
            return service.lowercased().contains(searchText.lowercased())
        })

        tableView.reloadData()
    }
}
