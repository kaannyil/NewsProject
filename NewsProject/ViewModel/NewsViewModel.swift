//
//  NewsViewModel.swift
//  NewsProject
//
//  Created by Kaan Yıldırım on 17.07.2023.
//

import Foundation

struct NewsTableViewModel {
    
    let newsList : [News]
}

extension NewsTableViewModel {
    func numberOfRowsInsection() -> Int {
        return self.newsList.count
    }
    
    func newsAtIndexPath(_ index: Int) -> NewsViewModel {
        let news = self.newsList[index]
        return NewsViewModel(news: news)
    }
}

struct NewsViewModel {
    
    let news : News
}
