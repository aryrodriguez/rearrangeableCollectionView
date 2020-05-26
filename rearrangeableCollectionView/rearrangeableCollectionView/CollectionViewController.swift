//
//  CollectionViewController.swift
//  rearrangeableCollectionView
//
//  Created by Ary on 26/05/2020.
//  Copyright © 2020 Ary. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class CollectionViewController: UICollectionViewController {

    var colors:[UIColor] = [.red, .green, .blue, .yellow, .orange]
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return colors.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        cell.backgroundColor = colors[indexPath.item]
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    override func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let movedItem = colors.remove(at: sourceIndexPath.item)
        colors.insert(movedItem, at: destinationIndexPath.item)
        
    }

}
