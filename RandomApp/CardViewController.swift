//
//  CardViewController.swift
//  Topps Pack Opener
//
//  Created by Benjamin Warren (student LM) on 6/5/20.
//  Copyright © 2020 Benjamin Warren (student LM). All rights reserved.
//

import Foundation
import UIKit

class CardViewController: UIViewController{
    
    
    @IBOutlet weak var cardImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(collection.selectedCard)
        cardImage.image = UIImage(named: collection.selectedCard)
    }
    
}
