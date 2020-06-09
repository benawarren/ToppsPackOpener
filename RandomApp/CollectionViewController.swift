//
//  CollectionTableViewController.swift
//  RandomApp
//
//  Created by Benjamin Warren (student LM) on 12/24/19.
//  Copyright © 2019 Benjamin Warren (student LM). All rights reserved.
//

import UIKit

struct collection {
    static var collectionArray : [String] = []
    static var selectedCard : String = ""
}




class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var segue = false
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.isScrollEnabled = true
        print(collection.collectionArray)
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collection.collectionArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        collection.selectedCard = collection.collectionArray[indexPath.item]
        segue = true
        performSegue(withIdentifier: "toCard", sender: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "card", for: indexPath) as! CustomCell
        
        print(collection.collectionArray[indexPath.item])
        cell.cardImage.image = UIImage(named: collection.collectionArray[indexPath.item] )
        return cell
        
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
       return segue
    }
    
    
    
    
    
    //    func addCard(_ card: String){
    //        collection.collectionArray.append(card)
    //    }
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

class CustomCell : UICollectionViewCell{
    
    @IBOutlet weak var cardImage: UIImageView!
    
}
