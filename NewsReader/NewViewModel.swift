//
//  NewViewModel.swift
//  NewsReader
//
//  Created by Sahil Reddy on 3/25/20.
//  Copyright © 2020 Sahil Reddy. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
//39efe64048b14b66acabe04ca62b378a
class NewsViewModel {
    
    var dataSource : Observable<[NewsArticle]>?
    
    func getNews(url: String) {
        self.dataSource = APIHandler.init().callAPIFromApiHandler(withURLString : url).map { (data) -> [NewsArticle] in
            if let data = data {
                return try! JSONDecoder().decode(NewsArticleResponse.self, from: data).articles
            } else {
                return []
            }
            
        }
    }
}
