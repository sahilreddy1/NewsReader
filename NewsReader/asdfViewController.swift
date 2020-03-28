//
//  asdfViewController.swift
//  NewsReader
//
//  Created by Sahil Reddy on 3/25/20.
//  Copyright © 2020 Sahil Reddy. All rights reserved.
//

import UIKit

class asdfViewController: UIViewController {

    @IBOutlet weak var newLabel: UILabel!
    
    var newView = UIView(frame: CGRect(x: 0, y: 0, width: 414, height: 1200))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        createGradientLayer()
        newLabel.text = "ads;foa;difnsadflk;sadnfl;knnda;lkdnvalk;ndvklansdlkv;nakl;sdnvkansdvlk;nsaads;foa;difnsadflk;sadnfl;knnda;lkdnvalk;ndvklansdlkv;nakl;sdnvkansdvlk;nsaads;foa;difnsadflk;sadnfl;knnda;lkdnvalk;ndvklansdlkv;nakl;sdnvkansdvlk;nsaads;foa;difnsadflk;sadnfl;knnda;lkdnvalk;ndvklansdlkv;nakl;sdnvkansdvlk;nsaads;foa;difnsadflk;sadnfl;knnda;lkdnvalk;ndvklansdlkv;nakl;sdnvkansdvlk;nsaads;foa;difnsadflk;sadnfl;knnda;lkdnvalk;ndvklansdlkv;nakl;sdnvkansdvlk;nsaads;foa;difnsadflk;sadnfl;knnda;lkdnvalk;ndvklansdlkv;nakl;sdnvkansdvlk;nsaads;foa;difnsadflk;sadnfl;knnda;lkdnvalk;ndvklansdlkv;nakl;sdnvkansdvlk;nsaads;foa;difnsadflk;sadnfl;knnda;lkdnvalk;ndvklansdlkv;nakl;sdnvkansdvlk;nsaads;foa;difnsadflk;sadnfl;knnda;lkdnvalk;ndvklansdlkv;nakl;sdnvkansdvlk;nsaads;foa;difnsadflk;sadnfl;knnda;lkdnvalk;ndvklansdlkv;nakl;sdnvkansdvlk;nsa"
    }
    
    @IBAction func UPbtn(_ sender: Any) {
        print("Up clicked")
    }
    
    @IBAction func btnClicked(_ sender: Any) {
        print("Down clicked")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func createGradientLayer() {
        let gradientLayer = CAGradientLayer()
     
        gradientLayer.frame = self.newView.bounds
     
        gradientLayer.colors = [UIColor(#colorLiteral(red: 0.03440807387, green: 0.09181449562, blue: 0.171462059, alpha: 1)).cgColor, UIColor.black.cgColor]
        
        self.newView.layer.addSublayer(gradientLayer)
        self.view.addSubview(newView)
        newView.sendSubviewToBack(view)
        
        
    }
}
