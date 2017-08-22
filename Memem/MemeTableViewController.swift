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
            tableView.reloadData()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       return allMemes.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allMemes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let meme = allMemes[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "memeCell", for: indexPath)

        // Configure the cell...
        cell.imageView?.image = meme.savedMeme
        cell.textLabel?.text = meme.topText
        cell.detailTextLabel?.text = meme.bottomText

        return cell
    }
    



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func displayMemeView(_ sender: Any) {
        
        
    }

}
