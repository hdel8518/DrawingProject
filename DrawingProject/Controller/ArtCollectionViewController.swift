//
//  ArtCollectionViewController.swift
//  DrawingProject
//
//  Created by Delgado, Hilaria on 11/7/18.
//  Copyright © 2018 Ctec. All rights reserved.
//

import UIKit

private let reuseIdentifier = "artIdentifier"

public class ArtCollectionViewController: UICollectionViewController
{
    
    //MARK: Data members for Creativity Screen
    
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRowCompact : CGFloat = 4
    private let itemsPerRowNormal : CGFloat = 6
    
    private let creativeCS : [UIImage?] =
    {
        return [
            UIImage(named: "orangeTurtle"),
            UIImage(named: "javaHAiku"),
            UIImage(named: "swiftHaiku"),
            UIImage(named: "mainframeHaiku"),
            UIImage(named: "octocat"),
            UIImage(named: "creativityMeme")
        ]
    }()
    
    private let labels : [String] =
    {
        return [
        "Stick",
        "Java Poem",
        "Swift Poem",
        "Mainframe poem",
        "kitty",
        "meme"
    ]
    }()

    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Navigation / layout
    
    public override func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        return 1
    }

    public override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return creativeCS.count
    }
   
    //mark: CollectionViewDataSource
    public override func collectionView(_ collectionView: UICollectionView,
                                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let artCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! ArtCell
        
        artCell.backgroundColor = .green
        artCell.artImage.image = creativeCS[indexPath.row]
        artCell.artLabel.text = labels[indexPath.row]
        
        return artCell

    }
     // MARK: UICollectionViewDelegate
    
    public func collectionView(_ collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        let paddingSpace = sectionInsets.left * (itemsPerRowCompact + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRowCompact
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) ->
    UIEdgeInsets
    {
        return sectionInsets
    }
    public func collectionView(_ collectionView: UICollectionView, layout
        collectionViewLayout: UICollectionViewLayout, minimumlineSpacingForSectionAt section:
        Int) -> CGFloat
    {
        return sectionInsets.left
    }
}
    
    
    
    
    
    
    
    
    

