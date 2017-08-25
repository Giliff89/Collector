//
//  PhotoPageViewController.swift
//  Collector
//
//  Created by gina iliff on 8/24/17.
//  Copyright © 2017 gina iliff. All rights reserved.
//

import UIKit

class PhotoPageViewController: UIViewController {
    
    var previousVC = ItemsTableViewController()
    var selectedPhoto : Item?
    
    @IBOutlet weak var photoNameLabel: UILabel!
    @IBOutlet weak var photoLabel: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoNameLabel.text = selectedPhoto?.title
        
        if let imageData = selectedPhoto?.image {
            
            photoLabel.image = UIImage(data: imageData)
            
        }
    }
}
