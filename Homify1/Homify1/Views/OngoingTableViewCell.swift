//
//  OngoingTableViewCell.swift
//  Homify1
//
//  Created by Aindrila Ray on 06/03/23.
//

import UIKit

class OngoingTableViewCell: UITableViewCell {
    
    static let identifier = "OngoingTableViewCell"
    
    private let ongoingImage: UIImageView = {
        
        let image = UIImageView()
        return image
        
        
        
    }()
    
    private let ongoingLabel: UILabel = {
        
        let label = UILabel()
        return label
        
    }()
    
    private let daysLeftLabel: UILabel = {
        
        let label = UILabel()
        return label
    }()
    
    private let outOfDaysLabel:UILabel = {
        
        let label = UILabel()
        return label
        
    }()
    
    private let nextServicesLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style , reuseIdentifier: reuseIdentifier)
        contentView.addSubview(ongoingImage)
        contentView.addSubview(ongoingLabel)
        contentView.addSubview(outOfDaysLabel)
        contentView.addSubview(daysLeftLabel)
        contentView.addSubview(nextServicesLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
    
    
    
}
