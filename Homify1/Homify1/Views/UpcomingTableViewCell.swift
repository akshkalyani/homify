//
//  UpcomingTableViewCell.swift
//  Homify1
//
//  Created by aksh kalyani on 30/03/23.
//

import UIKit

class UpcomingTableViewCell: UITableViewCell {
    
    static let identifier = "UpcomingTableViewCell"
    
    public let rescheduleButton: UIButton = {
        let reschedule = UIButton()
        reschedule.setTitle("Reschedule", for: .normal)
        reschedule.layer.backgroundColor = UIColor.systemRed.cgColor
        reschedule.layer.borderColor = UIColor.systemRed.cgColor
        reschedule.layer.borderWidth = 2
        reschedule.layer.cornerRadius = 7
        reschedule.translatesAutoresizingMaskIntoConstraints = false
        
        return reschedule
    }()
    
    private let viewProfessionalButton: UIButton = {
       
        let button = UIButton()
        button.setTitle("View Professional", for: .normal)
        button.layer.backgroundColor = UIColor.label.cgColor
        button.layer.borderColor = UIColor.label.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 7
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    public let BookNowButton: UIButton = {
       
        let button = UIButton()
        button.setTitle("Book", for: .normal)
        button.layer.backgroundColor = UIColor.green.cgColor
        button.layer.borderColor = UIColor.green.cgColor
        button.layer.borderWidth = 2
        button.layer.cornerRadius = 7
        button.translatesAutoresizingMaskIntoConstraints = false
//        button.addTarget(self, action: #selector(BookNowViewController), for: .touchUpInside)
        return button
    }()
    
    public let upcomingImageView: UIImageView = {
        let upcomingImage = UIImageView()
        upcomingImage.contentMode = .scaleAspectFit
        upcomingImage.tintColor = .black
        upcomingImage.frame = CGRect(x: 0, y: 0, width: 0, height: 40)
        upcomingImage.translatesAutoresizingMaskIntoConstraints = false
        upcomingImage.layer.cornerRadius = 7
        return upcomingImage
    }()
    
    public let upcomingUILabel: UILabel = {
        let upcomingLabel = UILabel()
        upcomingLabel.font = UIFont.systemFont(ofSize: 25, weight: .semibold)
        upcomingLabel.textColor = .label
        return upcomingLabel
    }()
    
    public let daysLeft: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25, weight: .medium)
        label.tintColor = .systemGray3
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    public let outOfDays: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        label.tintColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(upcomingImageView)
        contentView.addSubview(rescheduleButton)
        contentView.addSubview(viewProfessionalButton)
        contentView.addSubview(upcomingUILabel)
        contentView.addSubview(daysLeft)
        contentView.addSubview(outOfDays)
        contentView.addSubview(BookNowButton)
        
        upcomingImageView.frame = CGRect(x: 10, y: 30, width: 70, height: 70)
        rescheduleButton.frame = CGRect(x: 230, y: 90, width: 145 , height: 44)
        upcomingUILabel.frame = CGRect(x: 90, y: -14, width: UIScreen.main.bounds.width, height: 100)
        daysLeft.frame = CGRect(x: 90, y: 54, width: UIScreen.main.bounds.width - 10, height: 40)
        outOfDays.frame = CGRect(x: 90, y: 60, width: UIScreen.main.bounds.width - 150, height: 80)
        viewProfessionalButton.frame = CGRect(x: 230, y: 30, width: 145, height: 44)
        BookNowButton.frame = CGRect(x: 230, y: 130, width: 145, height: 44)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}


