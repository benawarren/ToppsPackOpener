//
//  Topps57ViewController.swift
//  RandomApp
//
//  Created by Benjamin Warren (student LM) on 12/23/19.
//  Copyright © 2019 Benjamin Warren (student LM). All rights reserved.
//

import UIKit

class Topps57ViewController: UIViewController {
    
    @IBOutlet weak var card: UIImageView!
    
    var possibleCards : [UIImage] = []
    var cardNames : [String] = []
    
    var cardCounter = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 84...134{
            cardNames.append("Card\(String(i))")
        }
        print(cardNames)
        for name in cardNames{
            possibleCards.append(createCard(name : name))
        }
        // Do any additional setup after loading the view.
    }
    
    
    func createCard(name : String)->UIImage{
        return UIImage(named: name)!
    }
    
    //    func addCards(){
    //        var card1 = card(image : UIImage(cgImage: "Card1" as! CGImage))
    //    }
    
    
    @IBAction func switchCard(_ sender: UIButton) {
        cardCounter -= 1
        if cardCounter > 0{
            let selection = Int.random(in: 0...possibleCards.count-1)
            card.image = possibleCards[selection]
            possibleCards.remove(at: selection)
            collection.collectionArray.append(cardNames[selection])
            print("new card")
        }
        else if cardCounter == 0{
            card.image = UIImage(named: "1957 Topps")
        }
        else{
            performSegue(withIdentifier: "back", sender: nil)
        }
        
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "back" {
            return false
        }
        return true
    }
    
    
    
    
    
    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
