//  UpcomingViewController.swift
//  Homify1
//
//  Created by aksh Kalyani on 03/03/23.
//

import UIKit

class UpcomingViewController: UIViewController {
    
    public let upcomingServices: [Upcoming] = [
        Upcoming(id: 001, service_type: "Cooking", service_name: "Cooking", service_title: "Cooking", coverImage: UIImage(named: "chef"), rating: "4/5", valid: "28 April 2023", dayLeft: "30 Days", outOfdays: "180 Days", worker: Worker(ID: 001, firstName: "Ramkumar", lastName: "Bhadoria", profileImage: UIImage(named: "worker_photo")!, languagesKnown: "Hindi, English", gender: "Male", address: "", mobileNumber: "+91 9825252525", ratings: "4.5/5"), nextVisit: "Tomorrow, 31 March 2023"),
        
        Upcoming(id: 002, service_type: "Maid", service_name: "Maid", service_title: "Maid", coverImage: UIImage(named: "broom"), rating: "4/5", valid: "28 April 2023", dayLeft: "30 Days", outOfdays: "180 Days", worker: Worker(ID: 001, firstName: "Rajkumari", lastName: "Bai", profileImage: UIImage(named: "worker_photo")!, languagesKnown: "Hindi, English", gender: "Female", address: "", mobileNumber: "+91 9125252525", ratings: "4.5/5"), nextVisit: "Tomorrow, 31 March 2023")
    ]
    
    public let upcomingTable: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(UpcomingTableViewCell.self, forCellReuseIdentifier: UpcomingTableViewCell.identifier)
        table.backgroundColor = .systemBackground
        return table
    }()

/*
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Upcoming Services"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem
            .largeTitleDisplayMode = .always
        view.addSubview(upcomingTable)
        upcomingTable.delegate = self
        upcomingTable.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        upcomingTable.frame = view.bounds
        view.addSubview(upcomingTable)
        upcomingTable.frame = view.bounds
    }
    
    
    @objc func didTapButton() {
        let vc = BookNowViewController() // Replace with your view controller
        navigationController?.pushViewController(vc, animated: true)
    }
    

    func tableview(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UpcomingTableViewCell.identifier, for: indexPath) as? UpcomingTableViewCell
        else {
            return UITableViewCell()
        }

        cell.upcomingUILabel.text = upcomingServices[indexPath.row].service_name
        cell.upcomingImageView.image = upcomingServices[indexPath.row].coverImage
        cell.daysLeft.text = upcomingServices[indexPath.row].dayLeft
        cell.backgroundColor = .systemBackground
        cell.outOfDays.text = upcomingServices[indexPath.row].outOfdays
        cell.BookNowButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        
        return cell
            }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
  }
*/

    @objc func didTapButton() {
        let vc = AddressInputViewController() // Replace with your view controller
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func buttonWorker() {
        let vc = WorkerPreferenceViewController() // Replace with your view controller
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .systemGroupedBackground
            title = "Upcoming"
            navigationController?.navigationBar.prefersLargeTitles = true
            navigationController?.navigationItem.largeTitleDisplayMode = .always
            upcomingTable.delegate = self
            upcomingTable.dataSource = self
   // Do any additional setup after loading the view.
        }
        
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            view.addSubview(upcomingTable)
            upcomingTable.frame = view.bounds
        }
    
    }

    extension UpcomingViewController: UITableViewDataSource, UITableViewDelegate{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return upcomingServices.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: UpcomingTableViewCell.identifier, for: indexPath) as? UpcomingTableViewCell else {
                
                return UITableViewCell()
            }
            
            cell.upcomingUILabel.text = upcomingServices[indexPath.row].service_name
            cell.upcomingImageView.image = upcomingServices[indexPath.row].coverImage
            cell.outOfDays.text = "Plan Valid through \(upcomingServices[indexPath.row].valid)"
//            cell.nextServicesLabel.text = "Next Slot: \(upcomingServices[indexPath.row].nextVisit)"
            //cell.viewProfessional.tag = indexPath.row
            cell.BookNowButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
            cell.rescheduleButton.addTarget(self, action: #selector(buttonWorker), for: .touchUpInside)

            //cell.viewProfessional.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
            
            
            
            
            return cell
            
            
            
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
//            let workerViewCController = WorkerProfileViewController()
//            workerViewCController.cellData = upcomingServices[indexPath.row].worker
//
            
        }
//        @IBAction func buttonTapped(_ sender: UIButton) {
//
//            let row = sender.tag
//            let data = upcomingServices[row].worker
//            let workerviewController = WorkerProfileViewController()
//            workerviewController.cellData = data
//            self.navigationController?.pushViewController(workerviewController, animated: true)
//
//                }
            
            
        
        
        
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 270  }
        
        
        
    }
