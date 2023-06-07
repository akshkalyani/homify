//
//  BookNowViewController.swift
//  Homify1
//
//  Created by aksh kalyani on 31/03/23.
//

import UIKit

class BookNowViewController: UIViewController {

//    let genderPicker = UIPickerView()
//    let genderOptions = ["Male", "Female"]
//    var selectedGender: String?
    
    let segmentedControl = UISegmentedControl(items: ["Address", "Worker Preferences", "Booking Summary"])
    let addressView = UIView()
    let workerPreferencesView = UIView()
    let bookingSummaryView = UIView()
    let addressTableView = UITableView()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Book Now"
        view.backgroundColor = UIColor(named: "headerBackground")
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always

        // Set up segmented control
        segmentedControl.selectedSegmentIndex = 0
        //segmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged), for: .valueChanged)
        //segmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged), for: .valueChanged
//        addChild(AddressViewController)
//        addChild(WorkerPreferenceViewController)
//        addChild(BookingSummaryViewController)
//        
        
               view.addSubview(segmentedControl)

               // Set up address view
               addressView.backgroundColor = .red
               view.addSubview(addressView)

               // Set up worker preferences view
               workerPreferencesView.backgroundColor = .green
               view.addSubview(workerPreferencesView)

               // Set up booking summary view
               bookingSummaryView.backgroundColor = .blue
               view.addSubview(bookingSummaryView)

               // Set constraints
               segmentedControl.translatesAutoresizingMaskIntoConstraints = false
               addressView.translatesAutoresizingMaskIntoConstraints = false
               workerPreferencesView.translatesAutoresizingMaskIntoConstraints = false
               bookingSummaryView.translatesAutoresizingMaskIntoConstraints = false

               NSLayoutConstraint.activate([
                   segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
                   segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                   segmentedControl.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1),

                   addressView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 8),
                   addressView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                   addressView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                   addressView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

                   workerPreferencesView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 8),
                   workerPreferencesView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                   workerPreferencesView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                   workerPreferencesView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

                   bookingSummaryView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 8),
                   bookingSummaryView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                   bookingSummaryView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                   bookingSummaryView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                   
                   addressTableView.topAnchor.constraint(equalTo: addressView.topAnchor),
                   addressTableView.leadingAnchor.constraint(equalTo: addressView.leadingAnchor),
                   addressTableView.trailingAnchor.constraint(equalTo: addressView.trailingAnchor),
                   addressTableView.bottomAnchor.constraint(equalTo: addressView.bottomAnchor),

                   
               ])

               // Hide worker preferences and booking summary views initially
               workerPreferencesView.isHidden = true
               bookingSummaryView.isHidden = true
           }
    
//    @objc func segmentedControlValueChanged(_ sender: UISegmentedControl) {
//        switch sender.selectedSegmentIndex {
//        case 0:
//            // Push first view controller
//            let firstViewController = AddressInputViewController()
//            navigationController?.pushViewController(firstViewController, animated: true)
//        case 1:
//            // Push second view controller
//            let secondViewController = WorkerPreferenceViewController()
//            navigationController?.pushViewController(secondViewController, animated: true)
//        case 2:
//            let thirdViewController = BookingSummaryViewController()
//            navigationController?.pushViewController(thirdViewController, animated: true)
//        default:
//            break
//        }
//    }
    

    
    

    // MARK: - UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10 // Replace with your own data source
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddressCell", for: indexPath)
        cell.textLabel?.text = "Address \(indexPath.row)" // Replace with your own data source
        return cell
    }

    // MARK: - UITableViewDelegate

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        // Handle row selection
    }

           @objc func segmentedControlValueChanged() {
               switch segmentedControl.selectedSegmentIndex {
               case 0:
                   addressView.isHidden = false
                   workerPreferencesView.isHidden = true
                   bookingSummaryView.isHidden = true
               case 1:
                   addressView.isHidden = true
                   workerPreferencesView.isHidden = false
                   bookingSummaryView.isHidden = true
               case 2:
                   addressView.isHidden = true
                   workerPreferencesView.isHidden = true
                   bookingSummaryView.isHidden = false
               default:
                   break
               }
           }
       }


// MARK: - UIPickerViewDelegate
//extension BookNowViewController: UIPickerViewDelegate {
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return genderOptions[row]
//    }
//
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        selectedGender = genderOptions[row]
//        print("Selected gender: \(selectedGender ?? "")")
//    }
//}
//
//// MARK: - UIPickerViewDataSource
//extension BookNowViewController: UIPickerViewDataSource {
//
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return genderOptions.count
//    }
//}


    
    
    



