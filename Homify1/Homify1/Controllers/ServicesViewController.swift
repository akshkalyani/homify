//
//  ServicesViewController.swift
//  Homify1
//
//  Created by Aindrila Ray on 21/02/23.
//

import UIKit

class ServicesViewController: UIViewController {
    
    private var titles : [Service] = [
        
        Service(id: 001, service_type: "Cleaning", service_name: "Full-house Cleaning", service_title: "Full-house Cleaning", amount: "" , coverImage: UIImage(named: "house-cleaning"), overview: "Full house cleaning is a thorough cleaning process that involves deep cleaning every area of your home. This type of cleaning is typically done when you are moving into a new home, preparing your home for a special occasion or event, or just wanting to refresh and revitalize your living space." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023"),
         
        Service(id: 001, service_type: "Driving", service_name: "Driving(8 hrs)", service_title: "Driving", amount: "" , coverImage: UIImage(named: "driver"), overview: "Driver services refer to a variety of services related to driving and transportation. These services are typically provided by government agencies or private companies and are designed to help drivers obtain licenses, comply with regulations, and maintain safe driving practices." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023"),
         
        Service(id: 001, service_type: "Cooking/Catering/Chef", service_name: "Chef", service_title: "Chef", amount: "" , coverImage: UIImage(named: "chef"), overview: "Full house cleaning is a thorough cleaning process that involves deep cleaning every area of your home. This type of cleaning is typically done when you are moving into a new home, preparing your home for a special occasion or event, or just wanting to refresh and revitalize your living space." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023"),
        Service(id: 001, service_type: "babysitting", service_name: "Full-time babysitting", service_title: "Babysitting", amount:"" , coverImage: UIImage(named: "mother"), overview: "Full house cleaning is a thorough cleaning process that involves deep cleaning every area of your home. This type of cleaning is typically done when you are moving into a new home, preparing your home for a special occasion or event, or just wanting to refresh and revitalize your living space." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023")
        
        
    
    ]
    
    private let searchController: UISearchController = {
        
        let controller = UISearchController(searchResultsController: SearchBarViewController())
        controller.searchBar.placeholder = "Search for any services, professionals..."
        controller.searchBar.searchBarStyle = .minimal
        
        
        return controller
        
        
    }()
        
    
    private let servicesTable: UITableView = {
        
        let table = UITableView()
        table.register(TitleTableViewCell.self, forCellReuseIdentifier: TitleTableViewCell.identifier)
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Available Services"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        
        
        view.addSubview(servicesTable)
        servicesTable.delegate = self
        servicesTable.dataSource = self
        navigationItem.searchController = searchController
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        servicesTable.frame = view.bounds
    }
}
    

    extension ServicesViewController: UITableViewDelegate, UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return titles.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier, for: indexPath) as? TitleTableViewCell else {
                return UITableViewCell()
            }
            cell.titleLabel.text = titles[indexPath.row].service_name
            cell.titlesPosterUIImageView.image = titles[indexPath.row].coverImage
            

            
            return cell
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 84
        }
        
    }


