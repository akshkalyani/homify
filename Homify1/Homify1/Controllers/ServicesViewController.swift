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
        
        Service(id: 002, service_type: "babysitting", service_name: "Maid Subscription", service_title: "broom", amount:"" , coverImage: UIImage(named: "broom"), overview: "" , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023"),
         
        Service(id: 003, service_type: "Cooking/Catering/Chef", service_name: "Cook", service_title: "Chef", amount: "" , coverImage: UIImage(named: "chef"), overview: "Good cooking at your space, with specially trained cooks and service." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023"),
       
        Service(id: 004, service_type: "babysitting", service_name: "Laundry", service_title: "Babysitting", amount:"" , coverImage: UIImage(named: "laundry"), overview: "" , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023"),
        
        Service(id: 005, service_type: "Driving", service_name: "Driver", service_title: "Driving", amount: "" , coverImage: UIImage(named: "driver"), overview: "Driver services refer to a variety of services related to driving and transportation. These services are typically provided by government agencies or private companies and are designed to help drivers obtain licenses, comply with regulations, and maintain safe driving practices." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023"),
        
        Service(id: 006, service_type: "Gardening", service_name: "Gardening", service_title: "gardening", amount:"1500" , coverImage: UIImage(named: "gardening"), overview: "Gardening services are offered as a subscription service to ensure helathy maintenance of plants." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023"),
        
        Service(id: 007, service_type: "babysitting", service_name: "Baby Sitter", service_title: "Babysitting", amount:"1500" , coverImage: UIImage(named: "mother"), overview: "The most trained professional baby sitter for your baby to take care of." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023"),
        
        Service(id: 008, service_type: "dog walker", service_name: "Dog Walker", service_title: "dog walker", amount:"2000" , coverImage: UIImage(named: "dogWalker"), overview: "A dog walker service offers professional care for dogs by experienced individuals or companies. Services include regular walks, exercise, feeding, and medication administration. It's convenient for busy pet owners or those unable to walk their dogs. The service ensures dogs receive proper exercise and care while their owners are away." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023"),
        
        Service(id: 008, service_type: "pest", service_name: "Pest Control", service_title: "broom", amount:"1200" , coverImage: UIImage(named: "pestcontrol"), overview: "Best pest control services at a subsidised rate. Pest control services are professional services that offer the removal and management of pests such as insects, rodents, and other animals. They use various methods such as trapping, extermination, and prevention to eliminate pests and protect against future infestations. These services are essential to protect homes and businesses from potential damage and health risks caused by pests.", rating: "3.6/5", valid: "from 28 to abcd")
        ]
    
    private let searchController: UISearchController = {
        let controller = UISearchController(searchResultsController: SearchBarViewController())
        controller.searchBar.placeholder = "Search the best of services."
        controller.searchBar.searchBarStyle = .default
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
        
        navigationItem.searchController = searchController
        view.addSubview(servicesTable)
        servicesTable.delegate = self
        servicesTable.dataSource = self
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
            return 100
        }
        
    }


