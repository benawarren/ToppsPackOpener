//
//  ViewController.swift
//  RandomApp
//
//  Created by Benjamin Warren (student LM) on 12/22/19.
//  Copyright © 2019 Benjamin Warren (student LM). All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let packs = ["1957 Topps", "1970 Topps", "2018 Topps Update", "2019 Topps"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cvcell", for: indexPath) as! CustomCVCell
        
        let newImage = packs[indexPath.row]
        cell.image.image = UIImage(named: newImage)
        return cell
    }
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.item == 0{
            performSegue(withIdentifier: "Topps57", sender: nil)
        }
        else if indexPath.item == 1{
            performSegue(withIdentifier: "Topps70", sender: nil)
        }
        else if indexPath.item == 2{
            performSegue(withIdentifier: "Topps18", sender: nil)
              }
        else{
            performSegue(withIdentifier: "Topps19", sender: nil)
              }
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        false
    }
  
}

class CustomCVCell : UICollectionViewCell{
    
    @IBOutlet weak var image: UIImageView!
    
}
