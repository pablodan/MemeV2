//
//  MemeTableViewController.swift
//  Memem
//
//  Created by Paul Omeally on 8/21/17.
//  Copyright © 2017 Paul Omeally. All rights reserved.
//

import UIKit

class MemeTableViewController: UITableViewController {
    
    var allMemes: [Meme]
    {
        return (UIApplication.shared.delegate as! AppDelegate).allMemes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         tableView.reloadData()
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allMemes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let meme = allMemes[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "memeCell")

        // Configure the cell...
        cell?.imageView?.image = meme.savedMeme
        cell?.textLabel?.text = meme.topText
        cell?.detailTextLabel?.text = meme.bottomText

        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let newController = storyboard!.instantiateViewController(withIdentifier: "SelectedViewController") as! DisplaySelectedViewController
        newController.selectedMeme = allMemes[indexPath.row]
        
        navigationController!.pushViewController(newController, animated: true)
    }

}


















