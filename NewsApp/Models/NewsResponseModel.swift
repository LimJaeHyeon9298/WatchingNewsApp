//
//  NewsResponseModel.swift
//  NewsApp
//
//  Created by 임재현 on 2023/08/29.
//

import Foundation

struct NewsResponseModel: Decodable {
    var items:[News] = []
}

struct News : Decodable {
    let title: String
    let link: String
    let description: String
    let pubDate:String
}
