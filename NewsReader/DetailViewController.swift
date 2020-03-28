//
//  DetailViewController.swift
//  NewsReader
//
//  Created by Sahil Reddy on 3/25/20.
//  Copyright © 2020 Sahil Reddy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var storyImage: UIImageView!
    @IBOutlet weak var contentLabel: UILabel!
    
    var titleStr: String?
    var contentStr: String?
    var imageURL: String?
    var link: String?
    var newBGColor = UIColor(patternImage: UIImage(named: "background")!)
    
    @IBOutlet weak var subView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.backgroundColor = newBGColor
        subView.backgroundColor = newBGColor
        self.titleLabel.text = titleStr
        self.contentLabel.text = contentStr
        self.storyImage.sd_setImage(with: URL(string: self.imageURL!), completed: nil)
    }
    

    @IBAction func openSafari(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: self.link!)!)
        
    }
    
}
