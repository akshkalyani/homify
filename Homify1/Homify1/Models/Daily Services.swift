//
//  Daily Services.swift
//  Homify1
//
//  Created by Aindrila Ray on 26/02/23.
//

import Foundation
import UIKit

struct DailyServicesResponse {
    let service : [Service]
    let ongoing : [Ongoing]
}

struct Service {
    
    let id: Int
    let service_type: String?
    let service_name: String?
    let service_title: String?
    let amount: String?
    let coverImage: UIImage?
    let overview: String?
    let rating: String?
    let valid: String
    
}

struct Ongoing {
    
    let id: Int
    let service_type: String?
    let service_name: String?
    let service_title: String?
    let amount: String?
    let coverImage: UIImage?
    let overview: String?
    let rating: String?
    let valid: String
    
    
}
