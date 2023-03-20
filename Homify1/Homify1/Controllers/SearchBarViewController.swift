//
//  SearchBarViewController.swift
//  Homify1
//
//  Created by Aindrila Ray on 27/02/23.
//

import UIKit

class SearchBarViewController: UIViewController {
    
    private var titles: [Service] = [ Service(id: 001, service_type: "Cleaning", service_name: "Full-house Cleaning", service_title: "Full-house Cleaning", amount: "" , coverImage: UIImage(named: "cleaning lady"), overview: "Full house cleaning is a thorough cleaning process that involves deep cleaning every area of your home. This type of cleaning is typically done when you are moving into a new home, preparing your home for a special occasion or event, or just wanting to refresh and revitalize your living space." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023"),
                                      
                                      
                                      Service(id: 001, service_type: "Cleaning", service_name: "Full-house Cleaning", service_title: "Full-house Cleaning", amount: "" , coverImage: UIImage(named: "cleaning lady"), overview: "Full house cleaning is a thorough cleaning process that involves deep cleaning every area of your home. This type of cleaning is typically done when you are moving into a new home, preparing your home for a special occasion or event, or just wanting to refresh and revitalize your living space." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023"),
                                      
                                      Service(id: 001, service_type: "Cleaning", service_name: "Full-house Cleaning", service_title: "Full-house Cleaning", amount: "" , coverImage: UIImage(named: "cleaning lady"), overview: "Full house cleaning is a thorough cleaning process that involves deep cleaning every area of your home. This type of cleaning is typically done when you are moving into a new home, preparing your home for a special occasion or event, or just wanting to refresh and revitalize your living space." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023"),
                                      Service(id: 001, service_type: "Cleaning", service_name: "Full-house Cleaning", service_title: "Full-house Cleaning", amount: "" , coverImage: UIImage(named: "cleaning lady"), overview: "Full house cleaning is a thorough cleaning process that involves deep cleaning every area of your home. This type of cleaning is typically done when you are moving into a new home, preparing your home for a special occasion or event, or just wanting to refresh and revitalize your living space." , rating: "3.5/5", valid: "28th December, 2022 to 28th February, 2023")
                                      
    
    ]
    private let searchResultsCollectionView: UICollectionView = {
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: UIScreen.main.bounds.width/3 - 10, height: 200)
        layout.minimumInteritemSpacing = 0
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(TitleCollectionViewCell.self, forCellWithReuseIdentifier: TitleCollectionViewCell.identifier)
        return collectionView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(searchResultsCollectionView)
        searchResultsCollectionView.dataSource = self
        searchResultsCollectionView.delegate = self
        
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        searchResultsCollectionView.frame = view.bounds
        
    }
    

   

}

extension SearchBarViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TitleCollectionViewCell.identifier, for: indexPath) as? TitleCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.backgroundColor = .systemGray2
        return cell
    }
}
