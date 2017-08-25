//
//  MemeTableViewCell.swift
//  Memem
//
//  Created by Paul Omeally on 8/25/17.
//  Copyright © 2017 Paul Omeally. All rights reserved.
//

import UIKit

class MemeTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var botomLabel: UILabel!
    @IBOutlet weak var memeImage: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func configureCell(meme:Meme)
    {
       topLabel.text = meme.topText
        botomLabel.text = meme.bottomText
        memeImage.image = meme.originalImage
    }

}
