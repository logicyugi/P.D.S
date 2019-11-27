//
//  HomeViewController.swift
//  P.P.
//
//  Created by Antoine El Samra on 19/10/2019.
//  Copyright © 2019 Antoine El Samra. All rights reserved.
//

import UIKit

class table {
    let image : UIImage
    let name : String
    
    init(_image: UIImage, _label : String) {
        image = _image
        name = _label
    }
}

class HomeView: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: UIScreen.main.bounds.width / 4, height: UIScreen.main.bounds.width / 2.5)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return InfoTable.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ViewCell", for: indexPath) as! InfoCollectionViewCell
        cell.image.image = InfoTable[indexPath.row].image
        cell.titre.text = InfoTable[indexPath.row].name
        return cell
    }
    
    
    
    var InfoTable = [table(_image: #imageLiteral(resourceName: "doctor (1)"), _label:                       "mon géneraliste"),
                     table(_image: #imageLiteral(resourceName: "syringe"), _label: "mon géneraliste"),
                     table(_image: #imageLiteral(resourceName: "qr-code"), _label: "mon géneraliste"),
                     table(_image: #imageLiteral(resourceName: "image"), _label: "mon géneraliste"),
                     table(_image: #imageLiteral(resourceName: "id-card"), _label: "mon géneraliste"),
                     table(_image: #imageLiteral(resourceName: "icon"), _label: "mon géneraliste"),
                     table(_image: #imageLiteral(resourceName: "document"), _label: "mon géneraliste"),
                     table(_image: #imageLiteral(resourceName: "credit-card"), _label: "mon géneraliste"),
                     table(_image: #imageLiteral(resourceName: "doctor"), _label: "mon géneraliste"),
    ]
    
    
}
