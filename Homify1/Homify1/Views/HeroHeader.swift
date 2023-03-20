//
//  HeroHeader.swift
//  Homify1
//
//  Created by Aindrila Ray on 26/02/23.
//

import UIKit

class HeroHeader: UIView {
    
    public let ongoingView: UIView = {
        
        let ongoingView = UIView()
        ongoingView.layer.backgroundColor = UIColor.white.cgColor
        ongoingView.layer.cornerRadius = 10
        ongoingView.frame = CGRect(x: 10, y: 14, width: UIScreen.main.bounds.width - 25, height: UIScreen.main.bounds.height - 480)
        ongoingView.layer.borderWidth = 1
        ongoingView.layer.borderColor = UIColor.black.cgColor
        
        
        
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
        label.textColor = .black
        
        
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
        button.frame = CGRect(x: 10, y: 300, width: UIScreen.main.bounds.width - 60, height: 100)
        return button
        
        
    }()
    
    
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.backgroundColor = UIColor.white.cgColor
        layer.cornerRadius = 12
        
     
        
        
        
        
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        addSubview(ongoingView)
        addSubview(ongoingTitle)
        addSubview(ongoingTableView)
        addSubview(newButton)
    
//        addSubview(moreButton)
//        addSubview(renewButton)
        
        

    }
    required init?(coder: NSCoder) {
        fatalError()
    }

}


