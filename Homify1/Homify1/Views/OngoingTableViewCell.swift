//
//  OngoingTableViewCell.swift
//  Homify1
//
//  Created by Aindrila Ray on 06/03/23.
//

import UIKit

class OngoingTableViewCell: UITableViewCell {
    
    static let identifier = "OngoingTableViewCell"
    
    public let ongoingImage: UIImageView = {
        
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
        
        
        
    }()
    
    public let ongoingLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    public let daysLeftLabel: UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public let outOfDaysLabel:UILabel = {
        
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
    }()
    
    public let nextServicesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style , reuseIdentifier: reuseIdentifier)
        contentView.addSubview(ongoingImage)
        contentView.addSubview(ongoingLabel)
        contentView.addSubview(outOfDaysLabel)
        contentView.addSubview(daysLeftLabel)
        contentView.addSubview(nextServicesLabel)
        //applyConstraints()
    }

//    private func applyconstraints(){
//        let ongoingLabelConstraints = [
//
//            ongoingLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
//            ongoingLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
//            ongoingLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15),
////            ongoin
//            ongoingImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor)
//
//
//        ]
//    }

    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
    
    
    
}
