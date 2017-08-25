//
//  DisplaySelectedViewController.swift
//  Memem
//
//  Created by Paul Omeally on 8/24/17.
//  Copyright © 2017 Paul Omeally. All rights reserved.
//

import UIKit

class DisplaySelectedViewController: UIViewController {
    
    var selectedMeme: Meme!
    
    @IBOutlet weak var resultImage: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultImage.image = selectedMeme.savedMeme
    }



 

}
