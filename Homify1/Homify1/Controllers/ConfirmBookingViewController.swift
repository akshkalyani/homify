//
//  ConfirmBookingViewController.swift
//  Homify1
//
//  Created by aksh kalyani on 07/04/23.
//

import UIKit

class ConfirmBookingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Booking Summary"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        
        
        let houseDetailslabel = UILabel()
        houseDetailslabel.text = "Worker Details"
        houseDetailslabel.font = .systemFont(ofSize: 20, weight: .bold)
        view.addSubview(houseDetailslabel)
        houseDetailslabel.frame = CGRect(x: 16, y: 150, width: 300, height: 70)
        
        // Create UI label for "Name" field
        let nameLabel = UILabel()
        nameLabel.text = "Gender:"
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
}
