//
//  Utilities.swift
//  Memem
//
//  Created by Paul Omeally on 8/24/17.
//  Copyright © 2017 Paul Omeally. All rights reserved.
//

import Foundation
import UIKit

class Utilities{
    
    static func navigateToDisplay()
    {
        let newController = storyboard!.instantiateViewController(withIdentifier: "SelectedViewController") as! DisplaySelectedViewController
        newController.selectedMeme = allMemes[indexPath.row]
        
        navigationController!.pushViewController(newController, animated: true)
    }

}
