//
//  APIHandler.swift
//  NewsReader
//
//  Created by Sahil Reddy on 3/25/20.
//  Copyright © 2020 Sahil Reddy. All rights reserved.
//

import Foundation
import RxSwift

class APIHandler {
    
    public func callAPIFromApiHandler(withURLString : String)
        -> Observable<Data?> {
            Observable<Data?>.create { (observer) -> Disposable in
                URLSession.shared.dataTask(with: URL(string: withURLString)!) {data, response, error in
                    observer.onNext(data)
                    if error != nil {
                        observer.onError(error!)
                    }
                    observer.onCompleted()
                }.resume()
                let disposable = Disposables.create()
                return disposable
            }

            
            
    }
}
