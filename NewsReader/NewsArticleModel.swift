//
//  NewsArticleModel.swift
//  NewsReader
//
//  Created by Sahil Reddy on 3/25/20.
//  Copyright © 2020 Sahil Reddy. All rights reserved.
//

import Foundation

struct NewsArticle: Codable {
    var source: [String: String?]?
    var author: String?
    var title: String?
    var url: String?
    var urlToImage: String?
    var description: String?
    var publishedAt: String?
    var content: String?
}

struct NewsArticleResponse: Codable {
    var status: String?
    var totalResults: Int?
    var articles: [NewsArticle]
}
