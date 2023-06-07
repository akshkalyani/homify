//
//  AddressViewController.swift
//  Homify1
//
//  Created by aksh kalyani on 07/04/23.
//

import UIKit

class AddressInputViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Address"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        
        //houseDetailslabel.translatesAutoresizingMaskIntoConstraints = false
        let houseDetailslabel = UILabel()
        houseDetailslabel.text = "House Details"
        houseDetailslabel.font = .systemFont(ofSize: 20, weight: .bold)
        view.addSubview(houseDetailslabel)
        houseDetailslabel.frame = CGRect(x: 16, y: 150, width: 300, height: 70)
        
        // Create UI label for "Name" field
        let nameLabel = UILabel()
        nameLabel.text = "Name"
        //nameLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI text field for "Name" field
        let nameTextField = UITextField()
        nameTextField.placeholder = "Enter your name"
        nameTextField.borderStyle = .roundedRect
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI label for "City" field
        let cityLabel = UILabel()
        cityLabel.text = "City:"
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI text field for "City" field
        let cityTextField = UITextField()
        cityTextField.placeholder = "Enter your city"
        cityTextField.borderStyle = .roundedRect
        cityTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI label for "Address" field
        let addressLabel = UILabel()
        addressLabel.text = "Address:"
        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI text field for "Address" field
        let addressTextField = UITextField()
        addressTextField.placeholder = "Enter your address"
        addressTextField.borderStyle = .roundedRect
        addressTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI label for "Pincode" field
        let pincodeLabel = UILabel()
        pincodeLabel.text = "Pincode:"
        pincodeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI text field for "Pincode" field
        let pincodeTextField = UITextField()
        pincodeTextField.placeholder = "Enter your pincode"
        pincodeTextField.borderStyle = .roundedRect
        pincodeTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // Create "Next" button
        let nextButton = UIButton(type: .roundedRect)
        nextButton.setTitle("Next", for: .normal)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        // Add all UI elements to a vertical stack view
        let stackView = UIStackView(arrangedSubviews: [nameLabel, nameTextField, cityLabel, cityTextField, addressLabel, addressTextField, pincodeLabel, pincodeTextField, nextButton])
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        // Add stack view to the view hierarchy
        view.addSubview(stackView)
        
        // Set constraints for the stack view
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            stackView.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: -16),
            nextButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    @objc private func nextButtonTapped() {
        // Create a new instance of the WorkerPreferenceViewController class
        let workerPreferenceViewController = WorkerPreferenceViewController()
        
        // Push the new view controller onto the navigation stack
        navigationController?.pushViewController(workerPreferenceViewController, animated: true)
        
    }
}
//        // Add the next button to the view
//        nextButton.translatesAutoresizingMaskIntoConstraints = false
//        nextButton.setTitle("Next", for: .normal)
//        //nextButton.addTarget(self, action: #selector(<#T##@objc method#>), for: <#T##UIControl.Event#>)
//
//    }
//}
