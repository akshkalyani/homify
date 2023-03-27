//
//  UserProfileViewController.swift
//  Homify1
//
//  Created by Aindrila Ray on 28/02/23.
//

import UIKit

class UserProfileViewController: UIViewController {
    
    let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //    let titleLabel: UILabel = {
    //        let title = UILabel()
    //        title.text = "My title"
    //        title.textColor = .white
    //        title.textAlignment = .center
    //        //title.translatesAutoresizingMaskIntoConstraintsv = false
    //        return title
    //    }()
    
    private var userdetails: [User] = [
       
        User(user_name: "username01", password: "12345", FirstName: "Master", LastName: "User", profile_image: UIImage(named: "brad_pitt"), address: "Chennai, Tamil Nadu", mobileNumber: "+91 9409255598")
    
    ]
    
    private var Tablelabels: [UserLabels] = [
        
        UserLabels(labels: "Saved Addresses", icon: UIImage(systemName:"house.fill")),
        UserLabels(labels: "Past Orders", icon: UIImage(systemName: "wallet.pass.fill")),
        UserLabels(labels: "My Service Bookings", icon: UIImage(systemName: "wallet.pass.fill")),
        UserLabels(labels: "Payments", icon: UIImage(systemName: "wallet.pass.fill")),
        UserLabels(labels: "Favourites", icon: UIImage(systemName: "heart.fill")),
        UserLabels(labels: "Settings", icon: UIImage(systemName: "ellipsis.vertical.bubble.fill")),
        UserLabels(labels: "SignOut", icon: UIImage(systemName: "rectangle.portrait.and.arrow.right"))
//
    
    ]
    
    
    private let userTable: UITableView = {

        let table = UITableView()
        table.register(UserTableViewCell.self, forCellReuseIdentifier: UserTableViewCell.identifier)
        return table

    }()
    
    private let profileImage: UIImageView = {
        
        let image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 70
        
        image.clipsToBounds = true
        image.image = UIImage(named: "brad_pitt")
        
        return image
        
    }()
    
    private let nameTitle: UILabel = {
        
        let name = UILabel()
        name.text = "Brad Pitt"
        name.textAlignment = .left
        name.font = .systemFont(ofSize: 25, weight: .semibold)
        return name
    }()
    
    private let contactTitle: UILabel = {
        
        let contact = UILabel()
        return contact
        
        
    }()
    
    
    
    

    override func viewDidLoad() {
        /*
         let titleLabel = UILabel()
           titleLabel.text = "Helper Profile"
           titleLabel.textAlignment = .center
           titleLabel.textColor = .white
         titleLabel.font = UIFont(name: "Arial Bold", size: 40)
           titleLabel.translatesAutoresizingMaskIntoConstraints = false
         view.addSubview(blueView)
         view.addSubview(titleLabel)
         NSLayoutConstraint.activate([
                     titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                     titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10)
                 ])
         */
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
//        let titleLabel = UILabel()
//        titleLabel.text = "Profile"
//        titleLabel.textAlignment = .center
//        titleLabel.textColor = .systemBackground
//        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        title = "Profile"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.barTintColor = UIColor(named: "headerBackground")
        let headerView = UserProfileHeader(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 420))
        userTable.tableHeaderView = headerView
        view.addSubview(userTable)
        
//        view.addSubview(blueView)
//        view.addSubview(titleLabel)
//        NSLayoutConstraint.activate([
//                    titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//                    titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10)
//                ])
        
        userTable.delegate = self
        userTable.dataSource = self
//        applyConstraints()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        userTable.frame = view.bounds
//        blueView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//        blueView.widthAnchor.constraint(equalToConstant: view.bounds.width).isActive = true
//        blueView.heightAnchor.constraint(equalToConstant: 150).isActive = true
//        blueView.backgroundColor = UIColor(named: "headerBackground")
    
    }
    
        
    
        
        

        


    }
    



extension UserProfileViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Tablelabels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.identifier, for: indexPath) as? UserTableViewCell else {
            
            return UITableViewCell()
        }
        
        cell.titleLabel.text = Tablelabels[indexPath.row].labels
        cell.titlesPosterUIImageView.image = Tablelabels[indexPath.row].icon
        
        
        return cell
        
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65    }
    
    
    
}

