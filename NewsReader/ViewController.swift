//
//  ViewController.swift
//  NewsReader
//
//  Created by Sahil Reddy on 3/25/20.
//  Copyright © 2020 Sahil Reddy. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import SDWebImage
class ViewController: UIViewController {
 
    

    @IBOutlet weak var collView: UICollectionView!
    let newsVM = NewsViewModel()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newsVM.getNews(url: "https://newsapi.org/v2/top-headlines?country=us&apiKey=fb1f785f985e46d6ad098ace44d65533")
        newsVM.dataSource!.bind(to: self.collView.rx.items(cellIdentifier: "cell", cellType: HomeCollectionViewCell.self)) {row, element, cell in
            cell.headlineLabel.text = element.title ?? ""
            cell.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
            cell.headlineImage.sd_setImage(with: URL(string: element.urlToImage ?? "urlstring is empty"), placeholderImage: UIImage(named: "placeholder") )
        }
        
        self.collView.rx.modelSelected(NewsArticle.self).subscribe { (eventModel) in
            let vc = self.storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController
            vc?.titleStr = eventModel.element?.title
            vc?.contentStr = eventModel.element?.content
            vc?.link = eventModel.element?.url
            vc?.imageURL = eventModel.element?.urlToImage

            self.navigationController?.pushViewController(vc!, animated: true)
        }
    }
    


}

