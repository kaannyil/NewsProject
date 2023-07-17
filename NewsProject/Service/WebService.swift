//
//  WebService.swift
//  NewsProject
//
//  Created by Kaan Yıldırım on 17.07.2023.
//

import Foundation

class WebService {
    func downloadNews (url: URL, completion: @escaping ([News]?) -> ()) {
        // İnternet üzerinden bir istekte bulunacağımız zaman "URLSession" kullanıyoruz.
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                let newsArray = try? JSONDecoder().decode([News].self, from: data)
                
                if let newsArray = newsArray {
                    completion(newsArray)
                }
            }
        }.resume() 
    }
}
