//
//  WorkerPreferenceViewController.swift
//  Homify1
//
//  Created by aksh kalyani on 07/04/23.
//

import UIKit

class WorkerPreferenceViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Worker Preferences"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        
        //houseDetailslabel.translatesAutoresizingMaskIntoConstraints = false
        let houseDetailslabel = UILabel()
        houseDetailslabel.text = "Worker Details"
        houseDetailslabel.font = .systemFont(ofSize: 20, weight: .bold)
        view.addSubview(houseDetailslabel)
        houseDetailslabel.frame = CGRect(x: 16, y: 150, width: 300, height: 70)
        
        // Create UI label for "Name" field
        let nameLabel = UILabel()
        nameLabel.text = "Gender:"
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI text field for "Name" field
        let nameTextField = UITextField()
        nameTextField.placeholder = "Preferred Gender"
        nameTextField.borderStyle = .roundedRect
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI label for "City" field
        let cityLabel = UILabel()
        cityLabel.text = "Home Size:"
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI text field for "City" field
        let cityTextField = UITextField()
        cityTextField.placeholder = "1BHK / 2BHK / 3BHK"
        cityTextField.borderStyle = .roundedRect
        cityTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI label for "Address" field
        let addressLabel = UILabel()
        addressLabel.text = "Number of Bathrooms:"
        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI text field for "Address" field
        let addressTextField = UITextField()
        addressTextField.placeholder = "1/2/3 Bathrooms"
        addressTextField.borderStyle = .roundedRect
        addressTextField.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI label for "Pincode" field
//        let pincodeLabel = UILabel()
//        pincodeLabel.text = "Pincode:"
//        pincodeLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        // Create UI text field for "Pincode" field
//        let pincodeTextField = UITextField()
//        pincodeTextField.placeholder = "Enter your pincode"
//        pincodeTextField.borderStyle = .roundedRect
//        pincodeTextField.translatesAutoresizingMaskIntoConstraints = false
//
        // Create "Next" button
        
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .date
        datePicker.translatesAutoresizingMaskIntoConstraints = false
                
        let label = UILabel()
        label.text = "Select a date:"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        
        let nextButton = UIButton(type: .roundedRect)
        nextButton.setTitle("Next", for: .normal)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        // Add all UI elements to a vertical stack view
        let stackView = UIStackView(arrangedSubviews: [nameLabel, nameTextField, cityLabel, cityTextField, addressLabel, addressTextField, label, datePicker, nextButton])
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
    
    @objc func didTapButton() {
        let vc = ConfirmBookingViewController() // Replace with your view controller
        navigationController?.pushViewController(vc, animated: true)
    }
}
/*
    
    let genderData = ["Male", "Female"]
    let jobTypeData = ["Cleaning", "Mopping", "Driver"]
    let houseSizeData = ["1BHK", "2BHK", "3BHK"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create UI label for "Gender" field
        let genderLabel = UILabel()
        genderLabel.text = "Gender:"
        genderLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI picker view for "Gender" field
        let genderPickerView = UIPickerView()
        genderPickerView.dataSource = self
        genderPickerView.delegate = self
        genderPickerView.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI label for "Type of Job" field
        let jobTypeLabel = UILabel()
        jobTypeLabel.text = "Type of Job:"
        jobTypeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI picker view for "Type of Job" field
        let jobTypePickerView = UIPickerView()
        jobTypePickerView.dataSource = self
        jobTypePickerView.delegate = self
        jobTypePickerView.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI label for "House Size" field
        let houseSizeLabel = UILabel()
        houseSizeLabel.text = "House Size:"
        houseSizeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Create UI picker view for "House Size" field
        let houseSizePickerView = UIPickerView()
        houseSizePickerView.dataSource = self
        houseSizePickerView.delegate = self
        houseSizePickerView.translatesAutoresizingMaskIntoConstraints = false
        
        // Create "Next" button
        let nextButton = UIButton(type: .system)
        nextButton.setTitle("Next", for: .normal)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        // Add all UI elements to a vertical stack view
        let stackView = UIStackView(arrangedSubviews: [genderLabel, genderPickerView, jobTypeLabel, jobTypePickerView, houseSizeLabel, houseSizePickerView, nextButton])
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
        let next = AddressInputViewController()
        navigationController?.pushViewController(AddressInputViewController(), animated: true)
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //        if pickerView == genderPickerView {
        //                        return genderData.count
        //                    } else if pickerView == jobTypePickerView {
        //                        return jobTypeData.count
        //                    } else {
        //                        return houseSizeData.count
        //                    }
        return 2
    }
}

            
            //MARK: - UIPickerViewDataSource, UIPickerViewDelegate
//            func numberOfComponents(in pickerView: UIPickerView) -> Int {
//                return 1
//            }
            
//            func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//                if pickerView == genderPickerView {
//                                return genderData.count
//                            } else if pickerView == jobTypePickerView {
//                                return jobTypeData.count
//                            } else {
//                                return houseSizeData.count
//                            }
        
//        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//            //            if pickerView == genderPickerView {
//            //                return genderData[row]
//            //            } else if pickerView == jobTypePickerView
//        }
//let houseDetailslabel = UILabel()
      let genderLabel = UILabel()
      let nameTextField = UITextField()
      let cityLabel = UILabel()
      let cityTextField = UITextField()
      let addressLabel = UILabel()
      let addressTextField = UITextField()
      let pincodeLabel = UILabel()
      let pincodeTextField = UITextField()
      let nextButton = UIButton(type: .system)
      
      override func viewDidLoad() {
      super.viewDidLoad()
      
      view.backgroundColor = .systemBackground
      title = "Worker Preference"
      navigationController?.navigationBar.prefersLargeTitles = true
      navigationController?.navigationItem.largeTitleDisplayMode = .always
      
      //houseDetailslabel.translatesAutoresizingMaskIntoConstraints = false
      //        houseDetailslabel.text = "House Details"
      //        houseDetailslabel.font = .systemFont(ofSize: 20, weight: .bold)
      //        view.addSubview(houseDetailslabel)
      //        houseDetailslabel.frame = CGRect(x: 16, y: 150, width: 300, height: 70)
      
      
      genderLabel.translatesAutoresizingMaskIntoConstraints = false
      genderLabel.text = "Gender"
      view.addSubview(genderLabel)
      //nameLabel.frame = CGRect(x: 16, y: 200, width: 300, height: 70)
      NSLayoutConstraint.activate([
      genderLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
      genderLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 250)
      ])
      
      nameTextField.translatesAutoresizingMaskIntoConstraints = false
      nameTextField.borderStyle = .roundedRect
      view.addSubview(nameTextField)
      NSLayoutConstraint.activate([
      nameTextField.leadingAnchor.constraint(equalTo: genderLabel.trailingAnchor, constant: 16),
      //nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 16),
      nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
      nameTextField.centerYAnchor.constraint(equalTo: genderLabel.centerYAnchor)
      ])
      
      // Add the city label and text field to the view
      cityLabel.translatesAutoresizingMaskIntoConstraints = false
      cityLabel.text = "City"
      view.addSubview(cityLabel)
      NSLayoutConstraint.activate([
      cityLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
      cityLabel.topAnchor.constraint(equalTo: genderLabel.bottomAnchor, constant: 16)
      ])
      
      cityTextField.translatesAutoresizingMaskIntoConstraints = false
      cityTextField.borderStyle = .roundedRect
      view.addSubview(cityTextField)
      NSLayoutConstraint.activate([
      cityTextField.leadingAnchor.constraint(equalTo: cityLabel.trailingAnchor, constant: 16),
      cityTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
      cityTextField.centerYAnchor.constraint(equalTo: cityLabel.centerYAnchor)
      ])
      
      // Add the address label and text field to the view
      addressLabel.translatesAutoresizingMaskIntoConstraints = false
      addressLabel.text = "Address"
      view.addSubview(addressLabel)
      NSLayoutConstraint.activate([
      addressLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
      addressLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 16)
      ])
      
      addressTextField.translatesAutoresizingMaskIntoConstraints = false
      addressTextField.borderStyle = .roundedRect
      view.addSubview(addressTextField)
      NSLayoutConstraint.activate([
      addressTextField.leadingAnchor.constraint(equalTo: addressLabel.trailingAnchor, constant: 16),
      addressTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
      addressTextField.centerYAnchor.constraint(equalTo: addressLabel.centerYAnchor)
      ])
      
      // Add the pincode label and text field to the view
      pincodeLabel.translatesAutoresizingMaskIntoConstraints = false
      pincodeLabel.text = "Pincode"
      view.addSubview(pincodeLabel)
      NSLayoutConstraint.activate([
      pincodeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
      pincodeLabel.topAnchor.constraint(equalTo: addressLabel.bottomAnchor, constant: 16)
      ])
      
      pincodeTextField.translatesAutoresizingMaskIntoConstraints = false
      pincodeTextField.borderStyle = .roundedRect
      view.addSubview(pincodeTextField)
      NSLayoutConstraint.activate([
      pincodeTextField.leadingAnchor.constraint(equalTo: pincodeLabel.trailingAnchor, constant: 16),
      pincodeTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
      pincodeTextField.centerYAnchor.constraint(equalTo: pincodeLabel.centerYAnchor)
      ])
      
      // Add the next button to the view
      nextButton.translatesAutoresizingMaskIntoConstraints = false
      nextButton.setTitle("Next", for: .normal)
      //nextButton.addTarget(self, action: #selector(<#T##@objc method#>), for: <#T##UIControl.Event#>)
      
      }
      }


*/
