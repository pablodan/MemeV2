//
//  MemeCollectionViewController.swift
//  Memem
//
//  Created by Paul Omeally on 8/22/17.
//  Copyright © 2017 Paul Omeally. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MemeCollectionViewController: UICollectionViewController {
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    var allMemes: [Meme]
    {
        return (UIApplication.shared.delegate as! AppDelegate).allMemes
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        flowLayoutDisplay()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        collectionView?.reloadData()
        flowLayoutDisplay()
    }

    // MARK: UICollectionViewDataSource

   override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return allMemes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let meme = allMemes[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "memeCell", for: indexPath) as! MemeCollectionViewCell
    
        // Configure the cell
        cell.displayImage.image = meme.savedMeme
    
        return cell
    }

    // MARK: UICollectionViewDelegate


    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

       override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let newController = storyboard!.instantiateViewController(withIdentifier: "SelectedViewController") as! DisplaySelectedViewController
        newController.selectedMeme = allMemes[indexPath.row]
        
        navigationController!.pushViewController(newController, animated: true)
        
    }
    func flowLayoutDisplay ()
    {
        let space: CGFloat = 3.0
        let dimension = (view.frame.size.width - (2 * space)) / 3.0
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSize(width: dimension, height: dimension)

    }
    
 
}


























