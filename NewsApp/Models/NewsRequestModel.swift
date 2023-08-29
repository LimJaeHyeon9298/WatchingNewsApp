//
//  NewsRequestModel.swift
//  NewsApp
//
//  Created by 임재현 on 2023/08/29.
//

import Foundation

struct NewsRequestModel: Codable {
    
    ///  시작 Index 1 ~ 10000
    let start:Int
    /// 검색 결과 출력 건수
    let display: Int
    /// 검색어
    let query: String
}
