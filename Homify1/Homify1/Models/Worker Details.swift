//
//  Worker Details.swift
//  Homify1
//
//  Created by aksh kalyani on 27/03/23.
//

import Foundation
import UIKit

struct Worker{
    let ID: Int?
//    let username: String?
//    let password: String
    let firstName: String?
    let lastName: String?
    let profileImage: UIImage
    let languagesKnown: String?
    let gender: String?
    let address: String
    let mobileNumber: String?
    let ratings: String?
}


struct WorkerLabels{
    let workerLabels: String?
    let workerIcon: UIImage?
}

struct WorkerServiceBookings{
    
    let id: Int
    let service_type: String
    let service_name: String
    let service_title: String
    let service_delivery_address: String?
    let valid: String?
    let user_contact: Int? //Contacrt of user at whose place the service delivelry will be happening
    
}
