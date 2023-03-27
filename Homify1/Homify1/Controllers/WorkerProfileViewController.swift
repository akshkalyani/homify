////
////  WorkerProfileViewController.swift
////  Homify1
////
////  Created by aksh kalyani on 27/03/23.
////
//
//import UIKit
//
//class WorkerProfileViewController: UIViewController {
//
//    let blueView: UIView = {
//        let view = UIView()
//        view.backgroundColor = .orange
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//
//    private var workerdetails: [Worker] = [
//
//        Worker(username: "worker101", password: "12345", firstName: "Initial",NamelastName: "Worker", profileImage: UIImage(named: "worker_photo") ?? <#default value#>, address: "Chennai, Tamil Nadu", mobileNumber: "+91 9409255598", ratings: "rated by 1K users")
//
//    ]
//
//    private var Tablelabels: [UserLabels] = [
//
//        UserLabels(labels: "Address", icon: UIImage(systemName:"house.fill")),
//        UserLabels(labels: "Salary", icon: UIImage(systemName: "wallet.pass.fill")),
//        UserLabels(labels: "My Service Bookings", icon: UIImage(systemName: "wallet.pass.fill")),
//        UserLabels(labels: "Payments Made", icon: UIImage(systemName: "wallet.pass.fill")),
//        UserLabels(labels: "Reviews", icon: UIImage(systemName: "star.fill")),
//        UserLabels(labels: "Replace worker", icon: UIImage(systemName: "arrow.triangle.swap"))
//    ]
//
//
//    private let workerTable: UITableView = {
//
//        let table = UITableView()
//        table.register(WorkerTableViewCell.self, forCellReuseIdentifier: WorkerTableViewCell.identifier)
//        return table
//
//    }()
//
//    private let profileImage: UIImageView = {
//
//        let image = UIImageView()
//        image.contentMode = .scaleAspectFill
//        image.layer.cornerRadius = 70
//
//        image.clipsToBounds = true
//        image.image = UIImage(named: "brad_pitt")
//
//        return image
//
//    }()
//
//    private let nameTitle: UILabel = {
//
//        let name = UILabel()
//        name.text = "Brad Pitt"
//        name.textAlignment = .left
//        name.font = .systemFont(ofSize: 25, weight: .semibold)
//        return name
//    }()
//
//    private let contactTitle: UILabel = {
//
//        let contact = UILabel()
//        return contact
//
//
//    }()
//
//
//
//
//
//    override func viewDidLoad() {
//        /*
//         let titleLabel = UILabel()
//           titleLabel.text = "Helper Profile"
//           titleLabel.textAlignment = .center
//           titleLabel.textColor = .white
//         titleLabel.font = UIFont(name: "Arial Bold", size: 40)
//           titleLabel.translatesAutoresizingMaskIntoConstraints = false
//         view.addSubview(blueView)
//         view.addSubview(titleLabel)
//         NSLayoutConstraint.activate([
//                     titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//                     titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10)
//                 ])
//         */
//        super.viewDidLoad()
//        view.backgroundColor = .systemBackground
////        let titleLabel = UILabel()
////        titleLabel.text = "Profile"
////        titleLabel.textAlignment = .center
////        titleLabel.textColor = .systemBackground
////        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        title = "Profile"
//        navigationController?.navigationBar.prefersLargeTitles = true
//        navigationController?.navigationItem.largeTitleDisplayMode = .always
//        navigationController?.navigationBar.barTintColor = UIColor(named: "headerBackground")
//        let headerView = WorkerProfileHeader(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 420))
//        workerTable.tableHeaderView = headerView
//        view.addSubview(workerTable)
//
////        view.addSubview(blueView)
////        view.addSubview(titleLabel)
////        NSLayoutConstraint.activate([
////                    titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
////                    titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10)
////                ])
//
//        workerTable.delegate = self
//        workerTable.dataSource = self
//
//    }
//
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        workerTable.frame = view.bounds
