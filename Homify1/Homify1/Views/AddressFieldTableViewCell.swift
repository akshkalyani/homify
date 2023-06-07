//
//  AddressFieldTableViewCell.swift
//  Homify1
//
//  Created by aksh kalyani on 07/04/23.
//

import UIKit

class AddressFieldTableViewCell: UITableViewCell {
    
    let identifier = "AddressFieldCell"
    let fieldNameLabel = UILabel()
    let fieldValueTextField = UITextField()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Add the field name label to the cell
        fieldNameLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(fieldNameLabel)
        NSLayoutConstraint.activate([
            fieldNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            fieldNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            fieldNameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8)
        ])
        
        // Add the field value text field to the cell
        fieldValueTextField.translatesAutoresizingMaskIntoConstraints = false
        fieldValueTextField.textAlignment = .right
        fieldValueTextField.clearButtonMode = .whileEditing
        contentView.addSubview(fieldValueTextField)
        NSLayoutConstraint.activate([
            fieldValueTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            fieldValueTextField.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            fieldValueTextField.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            fieldValueTextField.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
