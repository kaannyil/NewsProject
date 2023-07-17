//
//  News.swift
//  NewsProject
//
//  Created by Kaan Yıldırım on 16.07.2023.
//

import Foundation
 
// Decodable: API'dan veri alıp sadece kullanıcıya göstereceksek kullanılabilir. Encodable: Data base'e veriler kaydedeceksek kullanılabilir.
// GET & POST, Veri çekerken GetRequest, Data Base'e yüklerken genellikle PostRequest kullanılır.
struct News: Decodable {
    let title: String
    let story: String
}
