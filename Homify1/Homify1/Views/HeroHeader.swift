//
//  HeroHeader.swift
//  Homify1
//
//  Created by Aindrila Ray on 26/02/23.
//

import UIKit

class HeroHeader: UIView {
    
    private var ongoingServices : [Ongoing] = [
    
    Ongoing(id: 001, service_type: "Cleaning", service_name: "Cleaning", service_title: "Cleaning Sefvice", amount: "1200", coverImage: UIImage(named: "house_cleaning"), overview: "", rating: "2", valid: "12times"),
    
    Ongoing(id: 002, service_type: "Cook", service_name: "Cook", service_title: "cook", amount: "1300", coverImage: UIImage(named: "chef"), overview: "", rating: "", valid: "")
    
    ]
    
    public let ongoingView: UIView = {
        
        let ongoingView = UIView()
        ongoingView.layer.backgroundColor = UIColor.red.cgColor
        ongoingView.layer.cornerRadius = 10
        ongoingView.frame = CGRect(x: 10, y: 14, width: UIScreen.main.bounds.width - 25, height: UIScreen.main.bounds.height - 480)
        ongoingView.layer.borderWidth = 1
        ongoingView.layer.borderColor = UIColor.label.cgColor
       return ongoingView
        
    }()
    
    public let ongoingTableView: UITableView = {
        
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(OngoingTableViewCell.self, forCellReuseIdentifier: OngoingTableViewCell.identifier)
        table.frame = CGRect(x: 15, y: 80, width:UIScreen.main.bounds.width - 30, height: UIScreen.main.bounds.height - 800)
        return table
    }()
    
    public let ongoingTitle: UILabel = {
        
        let label = UILabel()
        label.text = "Ongoing Services"
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.frame = CGRect(x: UIScreen.main.bounds.width/2 - 95, y: 28, width: UIScreen.main.bounds.width, height: 50)
        label.textColor = .label
        return label
    }()
    
    public let newButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Edit details", for: .normal)
        button.layer.backgroundColor = UIColor.black.cgColor
        button.layer.borderColor = UIColor.systemBackground.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 7
        button.translatesAutoresizingMaskIntoConstraints = false
        button.frame = CGRect(x: 150, y: 600, width: UIScreen.main.bounds.width - 60, height: 100)
        return button
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        addSubview(ongoingView)
        addSubview(ongoingTitle)
        addSubview(ongoingTableView)
        addSubview(newButton)
    
    }
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }

}
 
extension HeroHeader: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ongoingServices.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: OngoingTableViewCell.identifier, for: indexPath) as! OngoingTableViewCell
        
        
        cell.ongoingImage.image = ongoingServices[indexPath.row].coverImage
        cell.ongoingLabel.text = ongoingServices[indexPath.row].service_title
        //titles[indexPath.row].coverImage
        
        return cell
    }
}
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

/*
 
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


 */
